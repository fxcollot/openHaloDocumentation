"""
OpenHalo Performance & Compatibility Testing Pipeline - Docker Edition
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
matplotlib.use('Agg') # Essentiel pour Docker (pas d'interface graphique)
import numpy as np
import os

# --- Configuration des Dossiers ---
OUTPUT_DIR = "/home/halo/reports"
if not os.path.exists(OUTPUT_DIR):
    os.makedirs(OUTPUT_DIR)

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
            self.openhalo_conn.autocommit = False 
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
        if self.openhalo_conn:
            try:
                self.openhalo_conn.close()
                print("\nClosed OpenHalo connection.")
            except: pass 

        if self.mysql_conn:
            try:
                self.mysql_conn.close()
                print("Closed MySQL connection.")
            except: pass

# --- Schema Inspector ---

class DynamicQueryBuilder:
    """Generates random but valid SQL queries based on table structure."""
    
    SCHEMA = {
        'name_basics': {
            'columns': ['nconst', 'primaryname', 'birthyear', 'deathyear', 'primaryprofession', 'knownfortitles'],
            'numeric': ['birthyear', 'deathyear'],
            'string': ['nconst', 'primaryname', 'primaryprofession', 'knownfortitles']
        }
    }

    def __init__(self, table_name):
        self.table = table_name
        self.meta = self.SCHEMA.get(table_name)

    def _get_random_value(self, column):
        if column in self.meta['numeric']:
            return str(random.randint(1950, 2020))
        return f"'%{random.choice(['actor', 'director', 'writer'])}%'"

    def build_select(self, target_table, mode='random', limit=10):
        cols = self.meta['columns']
        if mode == 'random':
            mode = random.choice(['star', 'single', 'multi'])

        selected_cols = "*" if mode == 'star' else random.choice(cols) if mode == 'single' else ", ".join(random.sample(cols, 3))
        
        query = f"SELECT {selected_cols} FROM {target_table}"
        if random.random() > 0.5:
            col = random.choice(cols)
            op = "=" if col in self.meta['numeric'] else "LIKE"
            query += f" WHERE {col} {op} {self._get_random_value(col)}"
        
        query += f" LIMIT {limit};"
        return f"Dynamic SELECT ({mode})", query

# --- Dual Query Tester ---

class DualQueryTester:
    def __init__(self, db_connector: DualDatabaseConnector, iterations: int = 5, warmup: int = 1):
        self.db = db_connector
        self.iterations = iterations
        self.warmup = warmup
        self.results: List[QueryResult] = []

    def execute_query(self, query: str, conn) -> Tuple[List, float]:
        try:
            if conn: conn.ping(reconnect=True, attempts=3, delay=1)
        except: pass
        cursor = conn.cursor()
        try:
            start = time.perf_counter()
            cursor.execute(query)
            query_clean = query.strip().upper()
            if any(query_clean.startswith(x) for x in ['SELECT', 'WITH', 'SHOW']):
                results = cursor.fetchall()
            else:
                results = []; conn.commit()
            return results, (time.perf_counter() - start) * 1000
        except Exception as e:
            conn.rollback(); raise e
        finally:
            cursor.close()

    def test_dual_sql(self, q_id, q_type, oh_sql, my_sql):
        """Exécute des requêtes spécifiques pour chaque cible (gère le préfixe mydb.)"""
        print(f"\nTesting: {q_id} ({q_type})")
        
        # Test OpenHalo
        try:
            res, elapsed = self.execute_query(oh_sql, self.db.openhalo_conn)
            self.results.append(QueryResult('OpenHalo', q_id, q_type, [elapsed], elapsed, elapsed, 0, "OK", len(res)))
            print(f"  [OpenHalo] Success: {elapsed:.2f}ms")
        except Exception as e:
            self.results.append(QueryResult('OpenHalo', q_id, q_type, [], 0, 0, 0, "Error", 0, str(e)))
            print(f"  [OpenHalo] Failed: {str(e)[:50]}")

        # Test MySQL
        if self.db.mysql_conn:
            try:
                res, elapsed = self.execute_query(my_sql, self.db.mysql_conn)
                self.results.append(QueryResult('MySQL', q_id, q_type, [elapsed], elapsed, elapsed, 0, "OK", len(res)))
                print(f"  [MySQL] Success: {elapsed:.2f}ms")
            except Exception as e:
                self.results.append(QueryResult('MySQL', q_id, q_type, [], 0, 0, 0, "Error", 0, str(e)))
                print(f"  [MySQL] Failed: {str(e)[:50]}")

    def generate_report(self, output_file: str):
        output_data = {"queries": [asdict(r) for r in self.results]}
        with open(output_file, 'w') as f:
            json.dump(output_data, f, indent=2)

    def generate_summary(self):
        oh = [r for r in self.results if r.target == "OpenHalo"]
        print("\n📌 OpenHalo Execution Summary")
        print(f"  Total: {len(oh)} | ✅ OK: {sum(r.status == 'OK' for r in oh)} | ❌ Errors: {sum(r.status == 'Error' for r in oh)}")

class StressTester:
    def __init__(self, db_config, num_threads=10, duration_seconds=5):
        self.db_config = db_config
        self.num_threads = num_threads
        self.duration = duration_seconds

    def _worker_task(self, table_name):
        try:
            conn = mysql.connector.connect(**self.db_config)
            cursor = conn.cursor()
            latencies, end_time = [], time.time() + self.duration
            while time.time() < end_time:
                try:
                    s = time.perf_counter()
                    cursor.execute(f"SELECT * FROM {table_name} LIMIT 1")
                    cursor.fetchall()
                    latencies.append((time.perf_counter() - s) * 1000)
                except: pass
            conn.close()
            return latencies
        except: return []

    def run_benchmark(self, target_name, table_name):
        print(f"🔥 Stress Test {target_name} on {table_name}...")
        with concurrent.futures.ThreadPoolExecutor(max_workers=self.num_threads) as executor:
            futures = [executor.submit(self._worker_task, table_name) for _ in range(self.num_threads)]
            all_lats = [lat for f in concurrent.futures.as_completed(futures) for lat in f.result()]
        
        tps = len(all_lats) / self.duration if all_lats else 0
        p95 = np.percentile(all_lats, 95) if all_lats else 0
        print(f"  ➜ {tps:.2f} TPS | P95 Latency: {p95:.2f}ms")
        return {"tps": tps, "p95_latency": p95}

def test_bulk_insert(target_name, config, table_name, batch_size=5000):
    print(f"\n📦 Bulk Insert Test: {target_name} ({batch_size} rows)")
    try:
        conn = mysql.connector.connect(**config)
        cursor = conn.cursor()
        cursor.execute(f"CREATE TABLE IF NOT EXISTS bulk_test (id INT, val VARCHAR(50))")
        data = [(i, f"val_{i}") for i in range(batch_size)]
        start = time.perf_counter()
        cursor.executemany(f"INSERT INTO bulk_test (id, val) VALUES (%s, %s)", data)
        conn.commit()
        print(f"  ➜ Success: {(time.perf_counter()-start)*1000:.2f}ms")
        cursor.execute("DROP TABLE bulk_test"); conn.close()
    except Exception as e: print(f"  ➜ Failed: {e}")

def main():
    # --- Configuration Cross-Database ---
    # OpenHalo: Connection directe à mydb (Postgres Database)
    openhalo_config = {'host': '127.0.0.1', 'port': 3308, 'user': 'halo', 'password': 'halopass', 'database': 'mydb', 'connection_timeout': 10}
    # MySQL: Connection à openhalo (MySQL Database) mais requêtes sur mydb.name_basics
    mysql_config = {'host': 'mysqldb', 'port': 3306, 'user': 'halo', 'password': 'halopass', 'database': 'openhalo'}
    
    # Définition des noms de tables selon la cible
    OH_TABLE = "name_basics"
    MY_TABLE = "mydb.name_basics"

    if not os.path.exists(OUTPUT_DIR): os.makedirs(OUTPUT_DIR)
    
    print("="*60 + "\nOpenHalo Docker Integration Test Suite\n" + "="*60)
    db = DualDatabaseConnector(openhalo_config, mysql_config)
    db.connect()
    tester = DualQueryTester(db, iterations=3, warmup=1)
    builder = DynamicQueryBuilder('name_basics')
    
    # --- 1. Execute Static Tests ---
    tester.test_dual_sql("md_1.1", "Simple Select", 
                        f"SELECT * FROM {OH_TABLE} WHERE primaryprofession = 'actor';",
                        f"SELECT * FROM {MY_TABLE} WHERE primaryprofession = 'actor';")
    
    tester.test_dual_sql("md_3.1", "Group By Aggregation", 
                        f"SELECT primaryprofession, COUNT(*) FROM {OH_TABLE} GROUP BY primaryprofession LIMIT 10;",
                        f"SELECT primaryprofession, COUNT(*) FROM {MY_TABLE} GROUP BY primaryprofession LIMIT 10;")

    # --- 2. Execute Dynamic Tests ---
    for i in range(1, 11):
        desc, oh_sql = builder.build_select(OH_TABLE)
        my_sql = oh_sql.replace(OH_TABLE, MY_TABLE)
        tester.test_dual_sql(f"dyn_sel_{i}", desc, oh_sql, my_sql)

    # --- 3. Performance Benchmarks ---
    print("\n" + "="*60 + "\nPERFORMANCE BENCHMARKS (Stress & Bulk)\n" + "="*60)
    test_bulk_insert("OpenHalo", openhalo_config, OH_TABLE)
    
    results_data = {}
    results_data['OpenHalo'] = StressTester(openhalo_config).run_benchmark("OpenHalo", OH_TABLE)
    if db.mysql_conn:
        results_data['MySQL'] = StressTester(mysql_config).run_benchmark("MySQL", MY_TABLE)

    # --- 4. Generate Graphs ---
    try:
        targets = list(results_data.keys())
        fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 6))
        ax1.bar(targets, [results_data[t]['tps'] for t in targets], color=['#4CAF50', '#2196F3'])
        ax1.set_title('Throughput (TPS)')
        ax2.bar(targets, [results_data[t]['p95_latency'] for t in targets], color=['#4CAF50', '#2196F3'])
        ax2.set_title('Latency P95 (ms)')
        plt.tight_layout()
        plt.savefig(os.path.join(OUTPUT_DIR, "benchmark_full_report.png"), dpi=300)
    except Exception as e: print(f"⚠ Graph error: {e}")

    tester.generate_report(os.path.join(OUTPUT_DIR, "openhalo_full_compatibility_report.json"))
    tester.generate_summary()
    db.close()
    print("\n✓ Full Compatibility Suite Complete!")

if __name__ == "__main__":
    main()
