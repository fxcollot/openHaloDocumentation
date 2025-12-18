"""
OpenHalo Performance & Compatibility Testing Pipeline
Tests queries using OpenHalo and a standard MySQL database for comparison.
Integrated with Markdown Report Test Suite.
"""

import time
import json
import mysql.connector
from dataclasses import dataclass, asdict
from typing import List, Dict, Tuple
from statistics import mean, median
import sys
import uuid
from copy import deepcopy
import random
import concurrent.futures
import matplotlib.pyplot as plt
import matplotlib 
matplotlib.use('Agg')
import numpy as np # Useful for data manipulation

@dataclass
class QueryResult:
    target: str # 'OpenHalo' or 'MySQL'
    query_id: str
    query_type: str
    times: List[float]
    mean_time: float
    median_time: float
    p95_time : float
    status: str
    rows: int
    error: str = None

# --- Dual Database Connector ---

class DualDatabaseConnector:
    """Manages connections to both OpenHalo and standard MySQL."""
    def __init__(self, openhalo_config: Dict, mysql_config: Dict):
        self.openhalo_config = openhalo_config
        self.mysql_config = mysql_config
        self.openhalo_conn = None
        self.mysql_conn = None
    
    def connect(self):
        """Establish connections."""
        print("Attempting to connect to OpenHalo...")
        try:
            self.openhalo_conn = mysql.connector.connect(**self.openhalo_config)
            self.openhalo_conn.autocommit = False # Important for transaction tests
            print("✓ Connected to OpenHalo (Port: {})".format(self.openhalo_config['port']))
        except Exception as e:
            print(f"✗ OpenHalo connection failed: {e}")
            sys.exit(1)
            
        print("Attempting to connect to MySQL...")
        try:
            self.mysql_conn = mysql.connector.connect(**self.mysql_config)
            self.mysql_conn.autocommit = False
            print("✓ Connected to MySQL (Port: {})".format(self.mysql_config['port']))
        except Exception as e:
            print(f"✗ MySQL connection failed: {e}")
            print("Warning: Continuing tests with OpenHalo only.")
    
    def close(self):
        # Protect OpenHalo connection closure
        if self.openhalo_conn:
            try:
                self.openhalo_conn.close()
                print("\nClosed OpenHalo connection.")
            except:
                pass # Already closed or network error, ignore

        # Protect MySQL connection closure
        if self.mysql_conn:
            try:
                self.mysql_conn.close()
                print("Closed MySQL connection.")
            except:
                pass

# --- Schema Inspector ---

import random

class DynamicQueryBuilder:
    """
    Generates random but valid SQL queries based on the table structure.
    """
    
    # Schema definition to know what to generate
    SCHEMA = {
        'name_basics': {
            'columns': ['nconst', 'primaryname', 'birthyear', 'deathyear', 'primaryprofession', 'knownfortitles'],
            'numeric': ['birthyear', 'deathyear'],
            'string': ['nconst', 'primaryname', 'primaryprofession', 'knownfortitles']
        },
        'films': {
            'columns': ['film_id', 'title', 'release_year', 'rating', 'genre'],
            'numeric': ['release_year', 'rating'],
            'string': ['film_id', 'title', 'genre']
        }
        # Add other tables if necessary
    }

    def __init__(self, table_name):
        self.table = table_name
        self.meta = self.SCHEMA.get(table_name)
        if not self.meta:
            raise ValueError(f"Table {table_name} not defined in SCHEMA")

    def _get_random_value(self, column):
        """Generates a fictive value for WHERE clauses (very basic)"""
        if column in self.meta['numeric']:
            return str(random.randint(1950, 2020))
        else:
            # For strings, return a generic value or a pattern
            return "'%actor%'" if 'profession' in column else "'TestValue'"

    def build_select(self, mode='random', limit=10):
        """
        Generates a dynamic SELECT.
        modes: 'star', 'single', 'multi', 'random'
        """
        cols = self.meta['columns']
        
        # Column selection
        if mode == 'random':
            mode = random.choice(['star', 'single', 'multi'])

        if mode == 'star':
            selected_cols = "*"
        elif mode == 'single':
            selected_cols = random.choice(cols)
        elif mode == 'multi':
            # Take between 2 and the max number of columns
            nb_cols = random.randint(2, len(cols))
            selected_cols = ", ".join(random.sample(cols, nb_cols))
        
        query = f"SELECT {selected_cols} FROM {self.table}"
        
        # Optional addition of a WHERE clause (1 in 3 times)
        if random.random() > 0.7:
            query += self._build_random_where_clause()
            
        # Optional addition of an ORDER BY clause (1 in 3 times)
        if random.random() > 0.7:
             col_sort = random.choice(cols)
             direction = random.choice(['ASC', 'DESC'])
             query += f" ORDER BY {col_sort} {direction}"

        query += f" LIMIT {limit};"
        return f"Dynamic SELECT ({mode})", query

    def _build_random_where_clause(self):
        """Construit une clause WHERE simple"""
        col = random.choice(self.meta['columns'])
        
        if col in self.meta['numeric']:
            operator = random.choice(['>', '<', '=', '>=', '<=', '!='])
            val = self._get_random_value(col)
            return f" WHERE {col} {operator} {val}"
        else:
            operator = random.choice(['=', '!=', 'LIKE'])
            val = self._get_random_value(col)
            return f" WHERE {col} {operator} {val}"

    def build_aggregation(self):
        """Génère une agrégation (COUNT, MAX, AVG)"""
        agg_func = random.choice(['COUNT', 'MIN', 'MAX'])
        
        # Prefer to do AVG/SUM on numbers
        if agg_func in ['AVG', 'SUM']:
            col = random.choice(self.meta['numeric'])
        else:
            col = random.choice(self.meta['columns']) # COUNT/MIN/MAX work on all
            
        # Sometimes we group, sometimes not
        group_by = ""
        group_col = random.choice(self.meta['string']) # We often group by string (e.g., profession)
        
        if random.choice([True, False]):
            base = f"SELECT {group_col}, {agg_func}({col}) FROM {self.table} GROUP BY {group_col}"
            # Often need an order by with group by for consistency
            base += f" ORDER BY {agg_func}({col}) DESC LIMIT 10;"
            return f"Dynamic AGG ({agg_func} by {group_col})", base
        else:
            return f"Dynamic AGG Simple ({agg_func})", f"SELECT {agg_func}({col}) FROM {self.table};"

    def build_complex_where(self, limit=10):
        """Generates WHERE clauses with IN, BETWEEN, and OR"""
        cols = self.meta['columns']
        # Choose 2 random columns to make a complex condition
        col1 = random.choice(cols)
        
        mode = random.choice(['IN', 'BETWEEN', 'OR_MIX'])
        query = f"SELECT * FROM {self.table} WHERE "
        
        if mode == 'IN':
            # Generates (val1, val2, val3)
            vals = [self._get_random_value(col1) for _ in range(3)]
            query += f"{col1} IN ({', '.join(vals)})"
            
        elif mode == 'BETWEEN' and col1 in self.meta['numeric']:
            val_start = random.randint(1900, 1980)
            val_end = val_start + random.randint(5, 20)
            query += f"{col1} BETWEEN {val_start} AND {val_end}"
        
        else: # OR MIX
            col2 = random.choice(cols)
            val1 = self._get_random_value(col1)
            val2 = self._get_random_value(col2)
            query += f"({col1} = {val1} OR {col2} = {val2})"

        query += f" LIMIT {limit};"
        return f"Dyn Complex Filter ({mode})", query

    def build_scalar_function(self, limit=10):
        """Teste les fonctions de manipulation de chaînes/maths"""
        str_col = random.choice(self.meta['string'])
        num_col = random.choice(self.meta['numeric'])
        
        func_type = random.choice(['STRING', 'MATH'])
        
        if func_type == 'STRING':
            # Test LENGTH, LOWER, CONCAT, LEFT
            func = random.choice([
                f"LENGTH({str_col})", 
                f"LOWER({str_col})", 
                f"CONCAT({str_col}, '_test')", 
                f"LEFT({str_col}, 3)"
            ])
            query = f"SELECT {str_col}, {func} as res FROM {self.table} WHERE {str_col} IS NOT NULL"
            
        else: # MATH
            # Test arithmetic operations
            calc = random.choice([
                f"({num_col} * 2)", 
                f"({num_col} % 10)", # Modulo
                f"ABS({num_col} - 2000)"
            ])
            query = f"SELECT {num_col}, {calc} as math_res FROM {self.table} WHERE {num_col} IS NOT NULL"

        query += f" LIMIT {limit};"
        return f"Dyn Scalar Func ({func_type})", query

    def build_subquery(self, limit=10):
        """Generates a subquery (WHERE col > (SELECT AVG...))"""
        # Use a numeric column for comparison
        num_col = random.choice(self.meta['numeric'])
        
        # Subquery that calculates an average or a min
        sub = f"(SELECT AVG({num_col}) FROM {self.table} WHERE {num_col} IS NOT NULL)"
        
        # Main query
        query = f"SELECT * FROM {self.table} WHERE {num_col} > {sub} LIMIT {limit};"
        return f"Dyn Subquery (Compare to AVG)", query

    def build_dml_lifecycle(self):
        """
        Generates a suite INSERT -> UPDATE -> SELECT -> DELETE.
        Returns a list of tuples (desc, sql).
        """
        # Unique ID to avoid breaking production
        unique_id = f"nm99{random.randint(10000, 99999)}"
        name = f"AutoTest_{random.randint(1,999)}"
        
        steps = []
        
        # 1. INSERT
        sql_ins = f"INSERT INTO {self.table} (nconst, primaryname, birthyear, primaryprofession) VALUES ('{unique_id}', '{name}', 2025, 'tester');"
        steps.append((f"Dyn DML 1: INSERT {unique_id}", sql_ins))
        
        # 2. UPDATE
        sql_upd = f"UPDATE {self.table} SET birthyear = 2026 WHERE nconst = '{unique_id}';"
        steps.append((f"Dyn DML 2: UPDATE {unique_id}", sql_upd))
        
        # 3. VERIFY
        sql_sel = f"SELECT * FROM {self.table} WHERE nconst = '{unique_id}';"
        steps.append((f"Dyn DML 3: SELECT {unique_id}", sql_sel))
        
        # 4. DELETE
        sql_del = f"DELETE FROM {self.table} WHERE nconst = '{unique_id}';"
        steps.append((f"Dyn DML 4: DELETE {unique_id}", sql_del))
        
        return steps

# --- Dual Query Tester ---

class DualQueryTester:
    def __init__(self, db_connector: DualDatabaseConnector, iterations: int = 5, warmup: int = 1):
        self.db = db_connector
        self.iterations = iterations
        self.warmup = warmup
        self.results: List[QueryResult] = []

    def execute_query(self, query: str, conn) -> Tuple[List, float]:
        """Execute a query on a given connection and return results + execution time"""

        try:
            # Check if the connection is active, otherwise reconnect (3 attempts)
            if conn:
                conn.ping(reconnect=True, attempts=3, delay=1)
        except Exception:
            # If the ping fails, let the cursor try its luck (and fail properly)
            pass

        cursor = conn.cursor()
        try:
            start = time.perf_counter()
            # Handle multiple statements if necessary, though simpler is better for timing
            cursor.execute(query)
            
            query_clean = query.strip().upper().lstrip('(').strip()
            
            if any(query_clean.startswith(x) for x in ['SELECT', 'WITH', 'SHOW', 'DESCRIBE', 'CALL', 'CHECK']):
                try:
                    results = cursor.fetchall()
                except mysql.connector.Error as e:
                    if "No result set" in str(e):
                        results = []
                    else:
                        raise e
            else:
                results = []
                conn.commit()
            
            end = time.perf_counter()
            return results, (end - start) * 1000  # ms
            
        except mysql.connector.Error as e:
            # Do not always rollback here to allow testing transactional errors
            # but rollback on fatal errors to clean the connection
            conn.rollback()
            raise e
        finally:
            cursor.close()

    def classify_performance(self, mean_time: float) -> str:
        if mean_time <= 50: return "OK"
        elif mean_time <= 200: return "Warning"
        else: return "Problem"

    def test_single_target(self, target: str, conn, query_id: str, query_type: str, query: str, skip: bool):
        times = []
        rows_count = 0

        if skip:
            return QueryResult(
                target=target,
                query_id=query_id,
                query_type=query_type,
                times=[],
                mean_time=0,
                median_time=0,
                p95_time=0,
                status="Skipped",
                rows=0,
                error="Query type not tested"
            )

        try:
            # Warmup (only for SELECTs to avoid side effects on INSERTs)
            is_select = query.strip().upper().startswith(('SELECT', 'WITH', 'SHOW'))
            if is_select and self.warmup > 0:
                try:
                    warmup_q = f"{query.rstrip(';')} LIMIT 1;" if 'LIMIT' not in query.upper() and 'SHOW' not in query.upper() else query
                    self.execute_query(warmup_q, conn)
                except Exception:
                    pass 

            # Iterations (1 for non-selects to avoid duplicates errors, self.iterations for SELECTs)
            run_count = self.iterations if is_select else 1
            
            for _ in range(run_count):
                results, elapsed = self.execute_query(query, conn)
                times.append(elapsed)
                if rows_count == 0:
                    rows_count = len(results) if results else 0
            
            mean_time = mean(times)
            median_time = median(times)

            p95_val = 0

            status = self.classify_performance(mean_time)
            
            print(f"  [{target}] Mean: {mean_time:.2f}ms, Rows: {rows_count}, Status: {status}")
            return QueryResult(
                target=target,
                query_id=query_id,
                query_type=query_type,
                times=times,
                mean_time=mean_time,
                median_time=median_time,
                p95_time=p95_val,
                status=status,
                rows=rows_count,
                error=None
            )
            
        except Exception as e:
            error_msg = str(e)
            status = "Error"
            
            # Specific detection for the compatibility report
            if "syntax error" in error_msg.lower():
                status = "SyntaxError"
            elif "doesn't exist" in error_msg.lower() or "unknown" in error_msg.lower():
                status = "MissingFeature"
            
            print(f"  [{target}] ✗ {status}: {error_msg.splitlines()[0][:100]}...")
            return QueryResult(
                target=target,
                query_id=query_id,
                query_type=query_type,
                times=[],
                mean_time=0,
                median_time=0,
                p95_time=0,
                status=status,
                rows=0,
                error=error_msg
            )

    def test_query(self, query_id: str, query_type: str, query: str, skip: bool = False):
        print(f"\nTesting: {query_id} ({query_type})")
        
        # Test OpenHalo
        oh_res = self.test_single_target('OpenHalo', self.db.openhalo_conn, query_id, query_type, query, skip)
        self.results.append(oh_res)

        # Test MySQL
        if self.db.mysql_conn:
            mysql_res = self.test_single_target('MySQL', self.db.mysql_conn, query_id, query_type, query, False)
            self.results.append(mysql_res)

    def generate_report(self, output_file: str = "openhalo_full_compatibility_report.json"):
        print("\n" + "="*60)
        print("FULL COMPATIBILITY REPORT GENERATION")
        print("="*60)
        
        output_data = {
            "meta": {"timestamp": time.time()},
            "queries": [asdict(r) for r in self.results]
        }

        with open(output_file, 'w') as f:
            json.dump(output_data, f, indent=2)
        print(f"\n✓ Report saved to {output_file}")
    
    def generate_summary(self):
        print("\n" + "=" * 60)
        print("SYNTHESIS REPORT – USEFUL METRICS")
        print("=" * 60)

        oh = [r for r in self.results if r.target == "OpenHalo"]
        mysql = [r for r in self.results if r.target == "MySQL"]

        oh_map = {r.query_id: r for r in oh}
        mysql_map = {r.query_id: r for r in mysql}

        # ---- Global success stats ----
        print("\n📌 OpenHalo execution summary")
        print(f"  Total queries tested : {len(oh)}")
        print(f"  ✅ OK                : {sum(r.status == 'OK' for r in oh)}")
        print(f"  ⚠ Problems           : {sum(r.status == 'Problem' for r in oh)}")
        print(f"  ❌ Errors             : {sum(r.status in ('Error','SyntaxError','MissingFeature') for r in oh)}")

        # ---- Slowest OpenHalo queries ----
        # This is the most interesting part: the bottlenecks
        slow_oh = sorted(
            [r for r in oh if r.mean_time > 0],
            key=lambda r: r.mean_time,
            reverse=True
        )[:10]

        print("\n🐢 TOP 10 QUERIES THE SLOWEST ON OPENHALO (vs MySQL)")
        print(f"  {'ID':<12} | {'OpenHalo (ms)':>15} | {'MySQL (ms)':>15} | {'Difference':>12}")
        print("-" * 65)
        
        for r in slow_oh:
            oh_time = r.mean_time
            # Looking for the corresponding time in MySQL
            my_r = mysql_map.get(r.query_id)
            my_time = my_r.mean_time if my_r else 0
            
            # Calculating the difference
            diff_str = ""
            if my_time > 0:
                ratio = oh_time / my_time
                if ratio > 1.5:
                    diff_str = f"x{ratio:.1f} slower 🔴"
                elif ratio < 0.7:
                    diff_str = f"x{1/ratio:.1f} faster 🟢"
                else:
                    diff_str = "Similar ⚪"
            else:
                diff_str = "N/A"

            print(f"  {r.query_id:<12} | {oh_time:>15.2f} | {my_time:>15.2f} | {diff_str}")

        # ---- OpenHalo Wins (Faster than MySQL) ----
        fast_oh = []
        for qid, oh_r in oh_map.items():
            my_r = mysql_map.get(qid)
            # We only compare if both succeeded
            if my_r and oh_r.mean_time > 0 and my_r.mean_time > 0:
                # If OH is at least 10% faster (ratio < 0.9)
                if oh_r.mean_time < (my_r.mean_time * 0.9):
                    fast_oh.append((qid, oh_r.mean_time, my_r.mean_time))
        
        # Sort by performance gain (largest difference first)
        fast_oh.sort(key=lambda x: x[2] - x[1], reverse=True)

        print("\n🚀 TOP QUERIES WHERE OPENHALO BEATS MYSQL (Hall of Fame)")
        print(f"  {'ID':<12} | {'OpenHalo (ms)':>15} | {'MySQL (ms)':>15} | {'Gain':>12}")
        print("-" * 65)
        
        if fast_oh:
            for qid, oh_t, my_t in fast_oh[:10]: # Top 10
                gain = my_t - oh_t
                ratio = my_t / oh_t
                print(f"  {qid:<12} | {oh_t:>15.2f} | {my_t:>15.2f} | -{gain:.1f}ms (x{ratio:.1f})")
        else:
            print("  No significant wins detected on this dataset.")

        # ---- MySQL faster than OpenHalo ----
        print("\n⚡ Queries faster on MySQL than OpenHalo")
        for qid, oh_r in oh_map.items():
            my_r = mysql_map.get(qid)
            if not my_r or oh_r.mean_time == 0 or my_r.mean_time == 0:
                continue

            delta = oh_r.mean_time - my_r.mean_time
            if delta > 5:
                print(
                    f"  {qid:<15} OH={oh_r.mean_time:>7.2f} ms | "
                    f"MySQL={my_r.mean_time:>7.2f} ms → Δ {delta:.2f} ms"
                )

        # ---- Missing / unsupported features ----
        print("\n🚫 Unsupported / failing features on OpenHalo")
        for r in oh:
            if r.status in ("MissingFeature", "SyntaxError"):
                print(f"  {r.query_id:<15} {r.query_type} → {r.status}")

        # ---- Averages ----
        oh_times = [r.mean_time for r in oh if r.mean_time > 0]
        my_times = [r.mean_time for r in mysql if r.mean_time > 0]

        print("\n📊 Average execution time")
        if oh_times:
            print(f"  OpenHalo : {mean(oh_times):.2f} ms")
        if my_times:
            print(f"  MySQL    : {mean(my_times):.2f} ms")

        print("\n✅ End of synthesis report")

        # ---- Category Breakdown ----
        print("\n📂 PERFORMANCE PAR CATÉGORIE")
        print(f"  {'Catégorie':<25} | {'OpenHalo Avg':>12} | {'MySQL Avg':>12}")
        print("-" * 55)
        
        categories = {
            'Simple SELECT': ['md_1', 'dyn_sel'],
            'Aggregations': ['md_3', 'dyn_agg'],
            'Joins': ['md_6'],
            'Subqueries': ['md_11', 'dyn_sub'],
            'DML (Write)': ['md_4', 'dyn_dml'],
            'String/Math': ['md_8', 'dyn_func']
        }
        
        for cat_name, prefixes in categories.items():
            # Filter results that start with one of the prefixes
            oh_cat = [r.mean_time for r in oh if any(r.query_id.startswith(p) for p in prefixes) and r.mean_time > 0]
            my_cat = [r.mean_time for r in mysql if any(r.query_id.startswith(p) for p in prefixes) and r.mean_time > 0]
            
            oh_val = f"{mean(oh_cat):.2f} ms" if oh_cat else "N/A"
            my_val = f"{mean(my_cat):.2f} ms" if my_cat else "N/A"
            
            print(f"  {cat_name:<25} | {oh_val:>12} | {my_val:>12}")


class StressTester:
    def __init__(self, db_config, num_threads=10, duration_seconds=5):
        self.db_config = db_config
        self.num_threads = num_threads
        self.duration = duration_seconds

    def _worker_task(self):
        """Simulates an active user and measures latencies"""
        try:
            conn = mysql.connector.connect(**self.db_config)
            cursor = conn.cursor()
        except:
            return [], 1 # Returns an empty list and 1 error

        latencies = [] # Storing the time of each query here
        errors = 0
        start_time = time.time()
        
        while time.time() - start_time < self.duration:
            try:
                req_start = time.perf_counter() # Start timer
                
                # Simple read query
                cursor.execute("SELECT * FROM name_basics WHERE primaryprofession = 'actor' LIMIT 1")
                cursor.fetchall()
                
                req_end = time.perf_counter() # End timer
                
                # Add the duration in milliseconds (ms) to the list
                latencies.append((req_end - req_start) * 1000)
                
            except Exception:
                errors += 1
        
        conn.close()
        return latencies, errors

    def run_benchmark(self, target_name):
        print(f"\n🔥 STRESS TEST: {target_name} ({self.num_threads} threads, {self.duration}s)")
        
        all_latencies = []
        total_errors = 0
        
        with concurrent.futures.ThreadPoolExecutor(max_workers=self.num_threads) as executor:
            futures = [executor.submit(self._worker_task) for _ in range(self.num_threads)]
            for future in concurrent.futures.as_completed(futures):
                lats, e = future.result()
                all_latencies.extend(lats) # We merge the results from all threads
                total_errors += e

        total_queries = len(all_latencies)
        
        # Statistical calculations
        if self.duration > 0:
            tps = total_queries / self.duration
        else:
            tps = 0
            
        if all_latencies:
            avg_lat = mean(all_latencies)
            all_latencies.sort()
            # P95: Latency worse than 95% of users
            p95_lat = all_latencies[int(len(all_latencies) * 0.95)]
        else:
            avg_lat = 0
            p95_lat = 0

        print(f"  ➜ TPS (Transac/Sec): {tps:.2f}")
        print(f"  ➜ Average Latency  : {avg_lat:.2f} ms")
        print(f"  ➜ P95 Latency      : {p95_lat:.2f} ms")
        print(f"  ➜ Errors           : {total_errors}")
        
        # We return a dictionary, not just a float
        return {
            "tps": tps,
            "avg_latency": avg_lat,
            "p95_latency": p95_lat
        }
    
def test_bulk_insert(target_name, config, batch_size=5000):
    print(f"\n📦 BULK INSERT TEST: {target_name} ({batch_size} rows)")
    try:
        conn = mysql.connector.connect(**config)
        cursor = conn.cursor()
        cursor.execute("DROP TABLE IF EXISTS bulk_test")
        cursor.execute("CREATE TABLE bulk_test (id INT, val VARCHAR(50))")
        
        data = [(i, f"val_{i}") for i in range(batch_size)]
        
        start = time.perf_counter()
        # executemany is optimized for bulk
        cursor.executemany("INSERT INTO bulk_test (id, val) VALUES (%s, %s)", data)
        conn.commit()
        end = time.perf_counter()
        
        duration_ms = (end - start) * 1000
        print(f"  ➜ Time: {duration_ms:.2f} ms")
        print(f"  ➜ Rate: {batch_size / (end - start):.0f} rows/sec")
        
        cursor.execute("DROP TABLE bulk_test")
        conn.close()
    except Exception as e:
        print(f"  ➜ Failed: {e}")

def main():
    # --- Configuration ---
    openhalo_config = {'host': 'localhost', 'port': 3308, 'user': 'halo', 'password': 'halo', 'database': 'testdb'}
    mysql_config = {'host': 'localhost', 'port': 3306, 'user': 'halo', 'password': 'halo', 'database': 'testdb'}
    
    # --- Setup ---
    print("="*60)
    print("OpenHalo vs MySQL - Full Markdown Compatibility Suite")
    print("="*60)

    db = DualDatabaseConnector(openhalo_config, mysql_config)
    db.connect()

    # Reduced iterations for compatibility check
    tester = DualQueryTester(db, iterations=3, warmup=1)

    builder = DynamicQueryBuilder('name_basics')
    
    table_nb = "name_basics"
    
    # =========================================================================
    # TESTS FROM MARKDOWN REPORT
    # =========================================================================

    # --- 1. Basic Queries ---
    print("\n--- 1. Basic Queries ---")
    tester.test_query("md_1.1", "Simple Field Query", 
        f"SELECT * FROM {table_nb} WHERE primaryprofession = 'actor';")
    
    tester.test_query("md_1.2", "Multi-Criteria Pattern Match", 
        f"SELECT * FROM {table_nb} WHERE birthyear > 1970 AND primaryprofession LIKE '%actor%';")

    # --- 2. Filtering and Sorting ---
    print("\n--- 2. Filtering and Sorting ---")
    tester.test_query("md_2.1", "ORDER BY Multiple Conditions", 
        f"SELECT primaryname, birthyear, primaryprofession FROM {table_nb} WHERE deathyear IS NULL AND birthyear IS NOT NULL ORDER BY birthyear ASC LIMIT 10;")

    # --- 3. Aggregation and Statistics ---
    print("\n--- 3. Aggregation and Statistics ---")
    tester.test_query("md_3.1", "GROUP BY with COUNT", 
        f"SELECT primaryprofession, COUNT(*) AS total FROM {table_nb} GROUP BY primaryprofession ORDER BY total DESC LIMIT 10;")

    tester.test_query("md_3.2", "AVG Aggregation Multi Column", 
        f"SELECT primaryprofession, AVG(birthyear) AS avg_birthyear, COUNT(*) AS total FROM {table_nb} WHERE birthyear IS NOT NULL GROUP BY primaryprofession ORDER BY total DESC LIMIT 10;")

    tester.test_query("md_3.3", "MIN/MAX Functions", 
        f"SELECT MAX(birthyear) AS most_recent, MIN(birthyear) AS oldest FROM {table_nb} WHERE birthyear IS NOT NULL;")

    tester.test_query("md_3.4", "Advanced Grouping (FLOOR)", 
        f"SELECT FLOOR(birthyear/10)*10 AS decade, COUNT(*) AS total FROM {table_nb} WHERE birthyear IS NOT NULL GROUP BY decade ORDER BY decade DESC;")

    # --- 4. Generating Dynamic SELECTs ---
    # We will generate 10 completely different select queries
    print("\n--- Generating 10 Random SELECT/WHERE/ORDER scenarios ---")
    for i in range(1, 11):
        # The builder returns a description and the SQL query
        desc, sql = builder.build_select(mode='random', limit=random.randint(5, 50))
        
        query_id = f"dyn_sel_{i}"
        tester.test_query(query_id, desc, sql)

    # --- 5. Generating Dynamic Aggregations ---
    print("\n--- Generating 5 Random Aggregation scenarios ---")
    for i in range(1, 6):
        desc, sql = builder.build_aggregation()
        
        query_id = f"dyn_agg_{i}"
        tester.test_query(query_id, desc, sql)


    # Phase 3: Complex Filters (IN, BETWEEN)
    print("\n--- 3. GGenerating Complex Filters ---")
    for i in range(1, 6):
        desc, sql = builder.build_complex_where()
        tester.test_query(f"dyn_cplx_{i:02d}", desc, sql)

    # Phase 4: Scalar Functions (String/Math)
    print("\n--- 4. Scalar Functions ---")
    for i in range(1, 6):
        desc, sql = builder.build_scalar_function()
        tester.test_query(f"dyn_func_{i:02d}", desc, sql)

    # Phase 5: Subqueries
    print("\n--- 5. Subqueries ---")
    for i in range(1, 4):
        desc, sql = builder.build_subquery()
        tester.test_query(f"dyn_sub_{i:02d}", desc, sql)

    # Phase 6: DML Lifecycle (Insert/Update/Delete)
    print("\n--- 6. DML Lifecycle (Safe) ---")
    # We generate a complete sequence of DML operations
    dml_steps = builder.build_dml_lifecycle()
    for desc, sql in dml_steps:
        # For DML, we don't want to execute it 3 times (otherwise duplicate key error), so we temporarily force iterations=1
        old_iter = tester.iterations
        tester.iterations = 1 
        tester.test_query("dyn_dml", "DML Lifecycle", sql)
        tester.iterations = old_iter

    # --- 7. Data Manipulation (CRUD) ---
    print("\n--- 7. Data Manipulation (CRUD) ---")
    # Using specific ID from MD report: nm9999999
    crud_id = 'nm9999999'
    
    # Preventive cleanup
    tester.test_query("md_4.0_cleanup", "Pre-CRUD Cleanup", 
        f"DELETE FROM {table_nb} WHERE nconst = '{crud_id}';")

    tester.test_query("md_4.1", "INSERT Operation", 
        f"INSERT INTO {table_nb} (nconst, primaryname, birthyear, deathyear, primaryprofession, knownfortitles) VALUES ('{crud_id}', 'Test Actor', 1990, NULL, 'actor', 'tt1234567');")

    tester.test_query("md_4.2", "SELECT Verification", 
        f"SELECT * FROM {table_nb} WHERE nconst = '{crud_id}';")

    tester.test_query("md_4.3", "UPDATE Operation", 
        f"UPDATE {table_nb} SET birthyear = 1985 WHERE nconst = '{crud_id}';")

    tester.test_query("md_4.3_verify", "Verify UPDATE", 
        f"SELECT birthyear FROM {table_nb} WHERE nconst = '{crud_id}';")

    tester.test_query("md_4.4", "DELETE Operation", 
        f"DELETE FROM {table_nb} WHERE nconst = '{crud_id}';")

    # --- 8. Index Management ---
    print("\n--- 8. Index Management ---")

    # --- PRELIMINARY CLEANUP (Clean Slate) ---
    # To ensure the "CREATE INDEX" test works every time (and truly measures the time),
    # we must first drop the indexes if they already exist.
    
    def safe_drop_index(conn, table, index_name):
        try:
            if conn:
                cursor = conn.cursor()
                cursor.execute(f"DROP INDEX {index_name} ON {table}")
                conn.commit()
                cursor.close()
        except:
            pass # We ignore the error if the index did not exist yet

    # We clean up on both databases
    safe_drop_index(db.openhalo_conn, table_nb, 'idx_profession')
    safe_drop_index(db.mysql_conn, table_nb, 'idx_profession')
    safe_drop_index(db.openhalo_conn, table_nb, 'idx_birthyear')
    safe_drop_index(db.mysql_conn, table_nb, 'idx_birthyear')

    # --- TEST EXECUTION ---
    
    # Test 5.1 : Now it will work because we cleaned up before
    tester.test_query("md_5.1", "CREATE INDEX VARCHAR", 
        f"CREATE INDEX idx_profession ON {table_nb}(primaryprofession);")

    # Test 5.2
    tester.test_query("md_5.2", "CREATE INDEX INT", 
        f"CREATE INDEX idx_birthyear ON {table_nb}(birthyear);")
    
    # Test 5.3 : Verification
    tester.test_query("md_5.3", "SHOW INDEX", f"SHOW INDEX FROM {table_nb};")

    # --- 6. Join Operations ---
    print("\n--- 6. Join Operations ---")
    # Prerequisite: films and film_actor tables must exist for these to pass
    
    tester.test_query("md_6.1", "Multi-Table INNER JOIN", 
        f"""
        SELECT nb.primaryname, f.title, f.release_year 
        FROM {table_nb} nb 
        JOIN film_actor fa ON nb.nconst = fa.nconst 
        JOIN films f ON fa.film_id = f.film_id 
        LIMIT 10;
        """)

    tester.test_query("md_6.2", "LEFT JOIN with Aggregation", 
        f"""
        SELECT nb.primaryname, COUNT(fa.film_id) AS nb_films 
        FROM {table_nb} nb 
        LEFT JOIN film_actor fa ON nb.nconst = fa.nconst 
        WHERE nb.birthyear > 1980 
        GROUP BY nb.nconst, nb.primaryname 
        ORDER BY nb_films DESC LIMIT 10;
        """)

    tester.test_query("md_6.3", "JOIN Multiple Conditions", 
        f"""
        SELECT nb.primaryname, f.title, f.rating, fa.role 
        FROM {table_nb} nb 
        JOIN film_actor fa ON nb.nconst = fa.nconst 
        JOIN films f ON fa.film_id = f.film_id 
        WHERE f.rating > 7.0 AND nb.primaryprofession LIKE '%actor%' 
        ORDER BY f.rating DESC LIMIT 10;
        """)

    tester.test_query("md_6.4", "SELF JOIN", 
        "SELECT f1.title AS film1, f2.title AS film2, f1.genre FROM films f1 JOIN films f2 ON f1.genre = f2.genre AND f1.film_id < f2.film_id LIMIT 10;")

    tester.test_query("md_6.5", "JOIN with HAVING and DISTINCT", 
        f"""
        SELECT nb.primaryname, COUNT(DISTINCT f.genre) AS nb_genres 
        FROM {table_nb} nb 
        JOIN film_actor fa ON nb.nconst = fa.nconst 
        JOIN films f ON fa.film_id = f.film_id 
        GROUP BY nb.nconst, nb.primaryname 
        HAVING COUNT(DISTINCT f.genre) > 1 LIMIT 10;
        """)

    tester.test_query("md_6.6", "Subquery with JOIN", 
        f"""
        SELECT f.title, f.rating 
        FROM films f 
        WHERE f.film_id IN (
            SELECT fa.film_id 
            FROM film_actor fa 
            JOIN {table_nb} nb ON fa.nconst = nb.nconst 
            WHERE nb.birthyear < 1950
        ) LIMIT 10;
        """)

    # --- 7. Views and Transactions ---
    print("\n--- 7. Views and Transactions ---")
    
    tester.test_query("md_7.1", "CREATE VIEW", 
        f"CREATE OR REPLACE VIEW actor_summary AS SELECT primaryname, birthyear, primaryprofession FROM {table_nb} WHERE primaryprofession = 'actor' ORDER BY birthyear DESC;")
    
    tester.test_query("md_7.2", "Query VIEW", "SELECT * FROM actor_summary LIMIT 10;")
    
    tester.test_query("md_7.3", "DROP VIEW", "DROP VIEW actor_summary;")

    # Transactions (using explicit SQL though connectors handle this via autocommit settings)
    # Note: Explicit START TRANSACTION inside execute might behave differently depending on connector,
    # but we are testing if the database accepts the syntax.
    trans_id = 'nm8888888'
    
    # 7.4 Commit
    tester.test_query("md_7.4_a", "Transaction START", "START TRANSACTION;")
    tester.test_query("md_7.4_b", "Transaction INSERT", f"INSERT INTO {table_nb} (nconst, primaryname, birthyear) VALUES ('{trans_id}', 'Trans Test', 1995);")
    tester.test_query("md_7.4_c", "Transaction COMMIT", "COMMIT;")
    tester.test_query("md_7.4_d", "Verify Commit", f"SELECT * FROM {table_nb} WHERE nconst = '{trans_id}';")
    
    # 7.5 Rollback
    tester.test_query("md_7.5_a", "Rollback START", "START TRANSACTION;")
    tester.test_query("md_7.5_b", "Rollback DELETE", f"DELETE FROM {table_nb} WHERE nconst = '{trans_id}';")
    tester.test_query("md_7.5_c", "Rollback EXEC", "ROLLBACK;")
    tester.test_query("md_7.5_d", "Verify Rollback (Row should exist)", f"SELECT * FROM {table_nb} WHERE nconst = '{trans_id}';")
    
    # Cleanup transaction test
    tester.test_query("md_7_cleanup", "Cleanup Trans", f"DELETE FROM {table_nb} WHERE nconst = '{trans_id}';")

    # --- 8. String Functions ---
    print("\n--- 8. String Functions ---")
    tester.test_query("md_8.1", "CONCAT", f"SELECT CONCAT(primaryname, ' (', birthyear, ')') AS full_info FROM {table_nb} WHERE birthyear IS NOT NULL LIMIT 10;")
    tester.test_query("md_8.2", "SUBSTRING", f"SELECT primaryname, SUBSTRING(primaryname, 1, 10) AS short_name FROM {table_nb} LIMIT 10;")
    tester.test_query("md_8.3", "UPPER/LOWER", f"SELECT UPPER(primaryname), LOWER(primaryprofession) FROM {table_nb} LIMIT 10;")
    tester.test_query("md_8.4", "LENGTH", f"SELECT primaryname, LENGTH(primaryname) AS len FROM {table_nb} ORDER BY len DESC LIMIT 10;")
    tester.test_query("md_8.5", "REPLACE", f"SELECT primaryname, REPLACE(primaryname, ' ', '_') FROM {table_nb} LIMIT 10;")
    tester.test_query("md_8.6", "TRIM", f"SELECT primaryname, TRIM(primaryname) FROM {table_nb} LIMIT 10;")

    # --- 9. Advanced SQL ---
    print("\n--- 9. Advanced SQL ---")
    tester.test_query("md_9.1", "UNION (Expected Fail on OH)", 
        f"(SELECT primaryname FROM {table_nb} WHERE primaryprofession = 'actor' LIMIT 5) UNION (SELECT primaryname FROM {table_nb} WHERE primaryprofession = 'actress' LIMIT 5);")    
    tester.test_query("md_9.2", "CASE WHEN", 
        f"""
        SELECT primaryname, 
        CASE 
            WHEN birthyear < 1950 THEN 'Vintage' 
            WHEN birthyear BETWEEN 1950 AND 1980 THEN 'Classic' 
            ELSE 'Modern' 
        END AS era 
        FROM {table_nb} LIMIT 10;
        """)

    # 9. Show Table Status (Manquant dans le script original)
    try:
        # We try changing DB (which often fails on OH according to the report) 
        # then display the status
        tester.test_query("prob_9_use", "USE DB", f"USE {openhalo_config['database']};")
        tester.test_query("prob_9_status", "SHOW TABLE STATUS", "SHOW TABLE STATUS;")
    except:
        pass

    # --- 10. Database Constraints ---
    print("\n--- 10. Database Constraints ---")
    # Note: Using ALTER TABLE requires exclusive locks usually
    
    tester.test_query("md_10.1", "Add UNIQUE Constraint", "ALTER TABLE films ADD CONSTRAINT unique_title UNIQUE (title);")
    # Test violation
    tester.test_query("md_10.1_fail", "Test UNIQUE Violation", "INSERT INTO films (film_id, title) VALUES ('tt999', 'Example Film 1');")
    
    
    # Step 1: Remove actors in film_actor who do not exist in name_basics
    tester.test_query("md_10.2_pre", "Cleanup Orphan Records", 
        f"DELETE FROM film_actor WHERE nconst NOT IN (SELECT nconst FROM {table_nb});")
    # Step 2: Now that the data is clean, we can add the FK
    tester.test_query("md_10.2", "Add FK Constraint", 
        f"ALTER TABLE film_actor ADD CONSTRAINT fk_actor FOREIGN KEY (nconst) REFERENCES {table_nb}(nconst);")
    
    tester.test_query("md_10.3", "Add CHECK Constraint", 
        "ALTER TABLE films ADD CONSTRAINT check_year CHECK (release_year > 1800 AND release_year <= 2100);")
    
    # Drop constraints
    tester.test_query("md_10.4_a", "Drop UNIQUE", "ALTER TABLE films DROP CONSTRAINT unique_title;")
    tester.test_query("md_10.4_b", "Drop CHECK", "ALTER TABLE films DROP CONSTRAINT check_year;")
    tester.test_query("md_10.4_c", "Drop FK", "ALTER TABLE film_actor DROP CONSTRAINT fk_actor;")

    # --- 11. Advanced Subqueries ---
    print("\n--- 11. Advanced Subqueries ---")
    tester.test_query("md_11.1", "Derived Table", 
        f"SELECT * FROM (SELECT primaryname, birthyear FROM {table_nb} WHERE birthyear > 1980) AS young_actors LIMIT 10;")
    
    tester.test_query("md_11.2", "Correlated Subquery", 
        f"""
        SELECT nb1.primaryname, nb1.birthyear 
        FROM {table_nb} nb1 
        WHERE nb1.birthyear > (
            SELECT AVG(birthyear) 
            FROM {table_nb} nb2 
            WHERE nb2.primaryprofession = nb1.primaryprofession 
            AND nb2.birthyear IS NOT NULL
        ) LIMIT 10;
        """)
    
    tester.test_query("md_11.3", "EXISTS Operator", 
        f"SELECT primaryname FROM {table_nb} nb WHERE EXISTS (SELECT 1 FROM film_actor fa WHERE fa.nconst = nb.nconst) LIMIT 10;")

    # --- 12. Data Export ---
    print("\n--- 12. Data Export ---")
    # By default, we try /tmp/
    export_path = "/tmp/test_export.csv"
    
    # ATTEMPT TO DETECT AUTHORIZED FOLDER (MySQL)
    try:
        if db.mysql_conn:
            cursor = db.mysql_conn.cursor()
            cursor.execute("SELECT @@secure_file_priv")
            row = cursor.fetchone()
            cursor.close()
            
            # If MySQL has a directory restriction, we use it
            if row and row[0]:
                secure_path = row[0]
                # Ensure the path ends with / or \
                if not secure_path.endswith('/') and not secure_path.endswith('\\'):
                    secure_path += '/'
                
                # We generate a unique filename to avoid the "File already exists" error
                filename = f"test_export_{random.randint(1000,9999)}.csv"
                export_path = f"{secure_path}{filename}"
                print(f"  [System] MySQL secure path detected. Using: {export_path}")
    except Exception as e:
        print(f"  [System] Warning: Could not detect secure_file_priv: {e}")

    # We run the test with the adapted path
    # Note: OpenHalo will fail anyway (Syntax Error), so the path doesn't matter for it.
    # For MySQL, this should now pass (if the user has FILE rights).
    tester.test_query("md_12.1", "INTO OUTFILE (Expected Fail on OH)", 
        f"SELECT * FROM {table_nb} LIMIT 10 INTO OUTFILE '{export_path.replace(chr(92), '/')}' FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\\n';")
    import subprocess

    print("\n--- 12.2 Shell Export (System Command) ---")
    try:
        cmd = f"mysql -P {mysql_config['port']} -h {mysql_config['host']} -u {mysql_config['user']} -p{mysql_config['password']} -e 'USE {mysql_config['database']}; SELECT * FROM {table_nb} LIMIT 5;' | sed 's/\\t/,/g'"
        # We do not actually execute it to avoid spamming the console, but we log that it is a manual/system test
        print("  [System] Shell export command defined but skipped in Python connector test.")
    except Exception as e:
        print(f"  [System] Error defining shell command: {e}")

    # --- 13. Advanced Features ---
    print("\n--- 13. Advanced Features ---")
    tester.test_query("md_13.1", "Fuzzy Search LIKE", f"SELECT * FROM {table_nb} WHERE primaryname LIKE '%Leonardo%DiCaprio%';")

    # =========================================================================
    # PROBLEMATIC QUERIES (From MD Report)
    # =========================================================================
    print("\n--- PROBLEMATIC / MISSING FEATURES (From Report) ---")

    # 1. JSON Helpers
    tester.test_query("prob_1", "JSON_EXTRACT", "SELECT JSON_EXTRACT('{\"a\": 1}', '$.a');")
    
    # 2. Multi-table DELETE
    # Creating a temp table for safety
    tester.test_query("prob_2_setup", "Setup Temp for Delete", f"CREATE TABLE IF NOT EXISTS nb_test AS SELECT * FROM {table_nb} LIMIT 10;")
    tester.test_query("prob_2", "Multi-table DELETE JOIN", 
        "DELETE nb FROM nb_test nb JOIN nb_test nb2 ON nb.nconst = nb2.nconst WHERE nb.birthyear < 1800;")
    tester.test_query("prob_2_cleanup", "Cleanup Temp", "DROP TABLE IF EXISTS nb_test;")

    # 3. Explicit Index Hints
    tester.test_query("prob_3", "FORCE INDEX", f"SELECT * FROM {table_nb} FORCE INDEX (PRIMARY) WHERE birthyear < 1900 LIMIT 5;")

    # 4. Partitioning Syntax
    tester.test_query("prob_4", "CREATE TABLE PARTITION", 
        """
        CREATE TABLE part_test (id INT, created_at DATE, PRIMARY KEY (id, created_at)) 
        PARTITION BY RANGE (YEAR(created_at)) (
            PARTITION p0 VALUES LESS THAN (2000), 
            PARTITION p1 VALUES LESS THAN (2010)
        );
        """)
    tester.test_query("prob_4_cleanup", "Drop Partition Table", "DROP TABLE IF EXISTS part_test;")

    # 5. Stored Procedures
    # Note: Sending CREATE PROCEDURE via Python connector often works without DELIMITER keywords if strictly one statement
    tester.test_query("prob_5_create", "CREATE PROCEDURE", 
        f"CREATE PROCEDURE get_actors() BEGIN SELECT * FROM {table_nb} WHERE primaryprofession LIKE '%actor%' LIMIT 5; END")
    tester.test_query("prob_5_call", "CALL PROCEDURE", "CALL get_actors();")
    tester.test_query("prob_5_drop", "DROP PROCEDURE", "DROP PROCEDURE IF EXISTS get_actors;")

    # 6. Fulltext Search
    try:
        tester.test_query("prob_6_idx", "CREATE FULLTEXT INDEX", f"CREATE FULLTEXT INDEX ft_name ON {table_nb} (primaryname);")
    except: pass
    tester.test_query("prob_6_match", "MATCH AGAINST", f"SELECT * FROM {table_nb} WHERE MATCH(primaryname) AGAINST('Fred' IN NATURAL LANGUAGE MODE);")

    # 7. Spatial
    try:
        tester.test_query("prob_7_idx", "CREATE SPATIAL INDEX", f"CREATE SPATIAL INDEX idx_spatial ON {table_nb} (primaryname);") # Invalid col but testing syntax
    except: pass
    tester.test_query("prob_7_func", "Spatial Function", "SELECT ST_Distance(POINT(0,0), POINT(1,1));")

    # 8. Handler
    tester.test_query("prob_8", "HANDLER OPEN", f"HANDLER {table_nb} OPEN;")

    # --- 9. Show Table Status ---
    # The report indicates this often fails due to the DB context
    tester.test_query("prob_9", "SHOW TABLE STATUS", "SHOW TABLE STATUS;")

    # 10. Get Diagnostics
    tester.test_query("prob_10", "GET DIAGNOSTICS", "GET DIAGNOSTICS @rows = ROW_COUNT;")

    # --- 14. PERFORMANCE BENCHMARKS ---
    print("\n" + "="*60)
    print("PERFORMANCE BENCHMARKS (Stress & Bulk)")
    print("="*60)

    # 1. Bulk Insert
    test_bulk_insert("OpenHalo", openhalo_config)
    test_bulk_insert("MySQL", mysql_config)

    # 2. Stress Test (Concurrency) & Graphiques Complets
    print("\n--- Generating Performance Benchmarks (TPS & Latency) ---")
    
    results_data = {}
    
    # Test OpenHalo
    stress = StressTester(openhalo_config, num_threads=10, duration_seconds=5)
    results_data['OpenHalo'] = stress.run_benchmark("OpenHalo")

    # Test MySQL
    stress_mysql = StressTester(mysql_config, num_threads=10, duration_seconds=5)
    results_data['MySQL'] = stress_mysql.run_benchmark("MySQL")

    # --- Generating Performance Graphs (TPS and Latency) ---
    try:
        targets = list(results_data.keys())
        tps_vals = [results_data[t]['tps'] for t in targets]
        lat_vals = [results_data[t]['p95_latency'] for t in targets]
        
        # Creating a figure with 2 subplots (1 row, 2 columns)
        fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 6))
        
        colors = ['#4CAF50', '#2196F3'] # Green, Blue

        # --- Graph 1: TPS (Throughput) ---
        bars1 = ax1.bar(targets, tps_vals, color=colors, width=0.5)
        ax1.set_title('Throughput (TPS)\n(Higher is better)', fontsize=12, fontweight='bold')
        ax1.set_ylabel('Transactions / Second')
        ax1.grid(axis='y', linestyle='--', alpha=0.5)
        
        # Etiquettes TPS
        for bar in bars1:
            height = bar.get_height()
            ax1.text(bar.get_x() + bar.get_width()/2., height, f'{height:.0f}', ha='center', va='bottom', fontweight='bold')

        # --- Graph 2: P95 Latency (Response Time) ---
        bars2 = ax2.bar(targets, lat_vals, color=colors, width=0.5)
        ax2.set_title('P95 Latency (Response Time)\n(Lower is better)', fontsize=12, fontweight='bold')
        ax2.set_ylabel('Milliseconds (ms)')
        ax2.grid(axis='y', linestyle='--', alpha=0.5)

        # Etiquettes Latence
        for bar in bars2:
            height = bar.get_height()
            ax2.text(bar.get_x() + bar.get_width()/2., height, f'{height:.2f} ms', ha='center', va='bottom', fontweight='bold')

        plt.suptitle("Benchmark OpenHalo vs MySQL (10 Threads)", fontsize=16)
        plt.tight_layout()
        
        graph_filename = "benchmark_full_report.png"
        plt.savefig(graph_filename, dpi=300)
        print(f"\n📊 Graphique complet généré : {graph_filename}")
        
    except Exception as e:
        print(f"⚠ Erreur graphique : {e}")

    # --- 15. COMPLEX QUERIES COMPARISON GRAPH ---
    print("\n--- Generating Complex Queries Comparison Graph ---")

    # List of "heavy" query IDs we want to visually compare
    target_ids = [
        'md_6.1',   # Multi-Table JOIN
        'md_6.2',   # LEFT JOIN + Aggregation
        'md_11.2',  # Correlated Subquery (Often slow on MySQL, fast on PG)
        'md_3.4',   # Advanced Grouping
        'md_10.1'   # Constraint Check
    ]
    
    # Data extraction
    labels = []
    oh_times = []
    mysql_times = []
    
    # We iterate over the results to find the average times
    # We use a dictionary for quick access
    oh_results = {r.query_id: r.mean_time for r in tester.results if r.target == 'OpenHalo'}
    mysql_results = {r.query_id: r.mean_time for r in tester.results if r.target == 'MySQL'}
    
    for qid in target_ids:
        if qid in oh_results and qid in mysql_results:
            labels.append(qid)
            oh_times.append(oh_results[qid])
            mysql_times.append(mysql_results[qid])
            
    # Create the Comparison Graph
    if labels:
        try:
            x = np.arange(len(labels))  # Position of labels
            width = 0.35  # Width of bars
            
            fig, ax = plt.subplots(figsize=(12, 6))
            
            rects1 = ax.bar(x - width/2, oh_times, width, label='OpenHalo', color='#4CAF50')
            rects2 = ax.bar(x + width/2, mysql_times, width, label='MySQL', color='#2196F3')
            
            # Texts and Titles
            ax.set_ylabel('Execution Time (ms)')
            ax.set_title('Performance on Complex Queries (Average Latency)')
            ax.set_xticks(x)
            ax.set_xticklabels(labels)
            ax.legend()
            ax.grid(axis='y', linestyle='--', alpha=0.3)
            
            # Adding values above the bars
            def autolabel(rects):
                for rect in rects:
                    height = rect.get_height()
                    width = rect.get_width()
                    x_pos = rect.get_x()
                    
                    ax.annotate(f'{height:.1f}',
                                xy=(x_pos + width / 2, height),
                                xytext=(0, 3), 
                                textcoords="offset points",
                                ha='center', va='bottom', fontsize=8)

            autolabel(rects1)
            autolabel(rects2)
            
            plt.tight_layout()
            plt.savefig("benchmark_complex_queries.png", dpi=300)
            print(f"📊 Complex Queries Graph generated: benchmark_complex_queries.png")
            
        except Exception as e:
            print(f"⚠ Complex graph error: {e}")
    else:
        print("⚠ Not enough data for the complex graph.")


    # --- Graph 3: Scatter Plot (Direct Comparison) ---
    # Create a new figure to avoid overloading the first one
    plt.figure(figsize=(10, 10))
    
    # We retrieve pairs of times (only when both succeeded)
    common_ids = []
    x_mysql = []
    y_openhalo = []
    
    for r in tester.results:
        if r.target == 'OpenHalo':
            # Find the corresponding MySQL result
            my_res = next((m for m in tester.results if m.target == 'MySQL' and m.query_id == r.query_id), None)
            if my_res and r.mean_time > 0 and my_res.mean_time > 0:
                # We filter out extreme outliers (> 1000ms) to keep the graph readable
                if r.mean_time < 2000 and my_res.mean_time < 2000:
                    common_ids.append(r.query_id)
                    y_openhalo.append(r.mean_time)
                    x_mysql.append(my_res.mean_time)

    # Plot the points
    plt.scatter(x_mysql, y_openhalo, color='purple', alpha=0.6, label='Queries')
    
    # Plot the diagonal line (y=x)
    limit = max(max(x_mysql or [1]), max(y_openhalo or [1]))
    plt.plot([0, limit], [0, limit], 'k--', label='Perfect Equality')
    
    # Green zone (OpenHalo faster)
    plt.fill_between([0, limit], 0, [0, limit], color='green', alpha=0.1, label='OpenHalo Faster Zone')
    # Red zone (MySQL faster)
    plt.fill_between([0, limit], [0, limit], limit, color='red', alpha=0.1, label='MySQL Faster Zone')

    plt.xlabel('MySQL Time (ms)')
    plt.ylabel('OpenHalo Time (ms)')
    plt.title('Direct Comparison of Execution Times')
    plt.legend()
    plt.grid(True, linestyle='--', alpha=0.5)
    
    plt.savefig("benchmark_scatter_comparison.png", dpi=300)
    print(f"📊 Scatter Plot Graph generated: benchmark_scatter_comparison.png")

    # --- Finalize ---
    tester.generate_report()
    tester.generate_summary()
    db.close()
    print("\n✓ Full Markdown Compatibility Suite Complete!")


if __name__ == "__main__":
    main()
