"""
OpenHalo Performance Testing Pipeline - Dual Comparison
Tests queries using OpenHalo and a standard MySQL database for comparison.
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

@dataclass
class QueryResult:
    target: str # 'OpenHalo' or 'MySQL'
    query_id: str
    query_type: str
    times: List[float]
    mean_time: float
    median_time: float
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
            print("✓ Connected to OpenHalo")
        except Exception as e:
            print(f"✗ OpenHalo connection failed: {e}")
            sys.exit(1)
            
        print("Attempting to connect to MySQL...")
        try:
            self.mysql_conn = mysql.connector.connect(**self.mysql_config)
            self.mysql_conn.autocommit = False
            print("✓ Connected to MySQL")
        except Exception as e:
            print(f"✗ MySQL connection failed: {e}")
            # Ne sort pas du programme si MySQL échoue, mais continue avec OpenHalo seul
            print("Warning: Continuing tests with OpenHalo only.")
    
    def close(self):
        if self.openhalo_conn:
            self.openhalo_conn.close()
            print("\nClosed OpenHalo connection.")
        if self.mysql_conn:
            self.mysql_conn.close()
            print("Closed MySQL connection.")

# --- Dual Query Tester ---

class DualQueryTester:
    def __init__(self, db_connector: DualDatabaseConnector, iterations: int = 10, warmup: int = 3):
        self.db = db_connector
        self.iterations = iterations
        self.warmup = warmup
        self.results: List[QueryResult] = []

    def execute_query(self, query: str, conn) -> Tuple[List, float]:
        """Execute a query on a given connection and return results + execution time"""
        cursor = conn.cursor()
        try:
            start = time.perf_counter()
            cursor.execute(query)
            
            # Récupérer résultats pour SELECT et WITH (CTE)
            query_upper = query.strip().upper()
            if query_upper.startswith('SELECT') or query_upper.startswith('WITH'):
                results = cursor.fetchall()
            else:
                # For modification queries (INSERT, UPDATE, DELETE)
                results = []
                conn.commit()
            
            end = time.perf_counter()
            return results, (end - start) * 1000  # ms
            
        except mysql.connector.Error as e:
            conn.rollback()
            raise e
        finally:
            cursor.close()

    def warmup_query(self, query: str, conn):
        for _ in range(self.warmup):
            try:
                self.execute_query(query, conn)
            except Exception:
                pass

    def classify_performance(self, mean_time: float) -> str:
        if mean_time <= 50:
            return "OK"
        elif mean_time <= 200:
            return "Warning"
        else:
            return "Problem"

    def test_single_target(self, target: str, conn, query_id: str, query_type: str, query: str, skip: bool):
        """Helper to run the test on a single connection."""
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
                status="Skipped",
                rows=0,
                error="Query type not tested"
            )

        try:
            # Warmup
            self.warmup_query(query, conn)
            
            # Mesures
            for _ in range(self.iterations):
                results, elapsed = self.execute_query(query, conn)
                times.append(elapsed)
                if rows_count == 0 and (query.strip().upper().startswith('SELECT') or query.strip().upper().startswith('WITH')):
                    rows_count = len(results)
            
            mean_time = mean(times)
            median_time = median(times)
            status = self.classify_performance(mean_time)
            
            print(f"  [{target}] Mean: {mean_time:.2f}ms, Median: {median_time:.2f}ms, Rows: {rows_count}, Status: {status}")
            return QueryResult(
                target=target,
                query_id=query_id,
                query_type=query_type,
                times=times,
                mean_time=mean_time,
                median_time=median_time,
                status=status,
                rows=rows_count
            )
            
        except Exception as e:
            error_msg = str(e)
            status = "Error"
            error = error_msg
            symbol = "✗"
            
            if "Unread result found" in error_msg:
                status = "Unsupported"
                error = f"{target} may not support this query type: {error_msg}"
                symbol = "⚠"
            
            print(f"  [{target}] {symbol} {status}: {error}")
            return QueryResult(
                target=target,
                query_id=query_id,
                query_type=query_type,
                times=[],
                mean_time=0,
                median_time=0,
                status=status,
                rows=0,
                error=error
            )

    def test_query(self, query_id: str, query_type: str, query: str, skip: bool = False):
        """Run the test on both OpenHalo and MySQL."""
        print(f"\nTesting: {query_id} ({query_type})")
        
        # Test OpenHalo
        openhalo_result = self.test_single_target(
            target='OpenHalo',
            conn=self.db.openhalo_conn,
            query_id=query_id,
            query_type=query_type,
            query=query,
            skip=skip
        )
        self.results.append(openhalo_result)

        # Test MySQL if connected
        if self.db.mysql_conn:
            mysql_result = self.test_single_target(
                target='MySQL',
                conn=self.db.mysql_conn,
                query_id=query_id,
                query_type=query_type,
                query=query,
                # MySQL should not skip the same query unless explicitly told so
                skip=False
            )
            self.results.append(mysql_result)

    def generate_report(self, output_file: str = "openhalo_comparison_results.json"):
        print("\n" + "="*60)
        print("DUAL TEST REPORT (OpenHalo vs MySQL)")
        print("="*60)
        
        # Helper function for printing summary
        def print_summary(target: str, all_results: List[QueryResult]):
            target_results = [r for r in all_results if r.target == target]
            total = len(target_results)
            if total == 0:
                print(f"\nNo results for {target}.")
                return

            ok_count = sum(1 for r in target_results if r.status == "OK")
            warning_count = sum(1 for r in target_results if r.status == "Warning")
            problem_count = sum(1 for r in target_results if r.status == "Problem")
            error_count = sum(1 for r in target_results if r.status == "Error")
            unsupported_count = sum(1 for r in target_results if r.status == "Unsupported")
            skipped_count = sum(1 for r in target_results if r.status == "Skipped")

            print(f"\n--- {target} Summary (Total: {total}) ---")
            print(f"  OK:          {ok_count} ({ok_count/total*100:.1f}%)")
            print(f"  Warning:     {warning_count} ({warning_count/total*100:.1f}%)")
            print(f"  Problem:     {problem_count} ({problem_count/total*100:.1f}%)")
            print(f"  Unsupported: {unsupported_count} ({unsupported_count/total*100:.1f}%)")
            print(f"  Error:       {error_count} ({error_count/total*100:.1f}%)")
            print(f"  Skipped:     {skipped_count} ({skipped_count/total*100:.1f}%)")

            if unsupported_count + error_count > 0:
                print(f"\n--- {target} Issues ---")
                for r in target_results:
                    if r.status in ["Unsupported", "Error"]:
                        print(f"  {r.query_id} ({r.query_type}): {r.status} - {r.error[:60]}...")
        
        # Print summaries
        print_summary('OpenHalo', self.results)
        print_summary('MySQL', self.results)
        
        output_data = {
            "summary_openhalo": {k: v for k, v in locals().items() if k.endswith('_count') and 'openhalo' in k}, # Placeholder for cleaner output
            "summary_mysql": {k: v for k, v in locals().items() if k.endswith('_count') and 'mysql' in k}, # Placeholder
            "queries": [asdict(r) for r in self.results]
        }
        
        # Regenerate summary data for clean JSON
        results_openhalo = [r for r in self.results if r.target == 'OpenHalo']
        results_mysql = [r for r in self.results if r.target == 'MySQL']

        output_data['summary_openhalo'] = {
            "total": len(results_openhalo),
            "ok": sum(1 for r in results_openhalo if r.status == "OK"),
            "warning": sum(1 for r in results_openhalo if r.status == "Warning"),
            "problem": sum(1 for r in results_openhalo if r.status == "Problem"),
            "error": sum(1 for r in results_openhalo if r.status == "Error"),
            "unsupported": sum(1 for r in results_openhalo if r.status == "Unsupported"),
            "skipped": sum(1 for r in results_openhalo if r.status == "Skipped")
        }
        output_data['summary_mysql'] = {
            "total": len(results_mysql),
            "ok": sum(1 for r in results_mysql if r.status == "OK"),
            "warning": sum(1 for r in results_mysql if r.status == "Warning"),
            "problem": sum(1 for r in results_mysql if r.status == "Problem"),
            "error": sum(1 for r in results_mysql if r.status == "Error"),
            "unsupported": sum(1 for r in results_mysql if r.status == "Unsupported"),
            "skipped": sum(1 for r in results_mysql if r.status == "Skipped")
        }


        with open(output_file, 'w') as f:
            json.dump(output_data, f, indent=2)
        print(f"\n✓ Full comparison report saved to {output_file}")


def main():
    # --- Configuration ---
    openhalo_config = {
        'host': 'localhost',
        'port': 3306, # Assuming OpenHalo runs on standard MySQL port
        'user': 'halo',
        'password': 'halo',
        'database': 'testdb'
    }
    mysql_config = { # Renamed from mysql_config to standard_mysql_config for clarity
        'host': 'localhost',
        'port': 3307, # Assuming standard MySQL runs on a different port
        'user': 'halo',
        'password': 'halo',
        'database': 'testdb'
    }
    
    # Check if a different DB is required for modification queries
    modification_db_config = deepcopy(openhalo_config)
    # modification_db_config['database'] = 'modification_test_db' # Use a separate, small DB for modification tests to avoid data corruption
    
    # --- Setup ---
    print("="*60)
    print("OpenHalo vs MySQL Performance Comparison")
    print("="*60)

    db = DualDatabaseConnector(openhalo_config, mysql_config)
    db.connect()

    tester = DualQueryTester(db, iterations=10, warmup=2)
    
    # Create a unique ID for modification tests to prevent constraint errors
    unique_id = str(uuid.uuid4())[:8]

    # --- Test Queries ---

    # ========================================
    # 3.1 Selection Queries (SELECT)
    # ========================================
    tester.test_query("select_simple", "Simple SELECT", 
        "SELECT * FROM name_basics LIMIT 10;")
    
    tester.test_query("select_with_condition", "SELECT with WHERE", 
        "SELECT * FROM name_basics WHERE birthYear > 1980 LIMIT 10;")
    
    tester.test_query("select_projection", "SELECT specific columns", 
        "SELECT nconst, primaryName, primaryProfession FROM name_basics LIMIT 10;")
    
    tester.test_query("select_like", "SELECT with LIKE", 
        "SELECT * FROM name_basics WHERE primaryProfession LIKE '%actor%' LIMIT 10;")
    
    tester.test_query("select_aggregate", "Aggregates (GROUP BY/AVG/COUNT)", 
        "SELECT COUNT(*), AVG(birthYear) FROM name_basics GROUP BY primaryProfession LIMIT 10;")
    
    tester.test_query("select_subquery", "Subquery IN", 
        "SELECT * FROM name_basics WHERE nconst IN (SELECT nconst FROM name_basics LIMIT 5);")
    
    tester.test_query("self_inner_join", "Self JOIN", 
        "SELECT a.nconst, b.primaryName FROM name_basics a INNER JOIN name_basics b ON a.nconst = b.nconst LIMIT 5;")

    # ========================================
    # 3.2 Modification Queries (INSERT/UPDATE/DELETE)
    # NOTE: You should use a separate, small test table/database for these 
    # to avoid modifying production data or running into foreign key issues.
    # ========================================
    # # Ensure a table named 'test_table' with nconst, primaryName, birthYear exists and is empty
    #
    # # INSERT test
    # tester.test_query("modification_insert", "INSERT", 
    #     f"INSERT INTO test_table (nconst, primaryName, birthYear) VALUES ('nm{unique_id}', 'Test Name', 2000);",
    #     skip=False)
    #
    # # UPDATE test (updates the row inserted above)
    # tester.test_query("modification_update", "UPDATE", 
    #     f"UPDATE test_table SET primaryName = 'Updated Name' WHERE nconst = 'nm{unique_id}';",
    #     skip=False)
    #
    # # DELETE test (deletes the row inserted above)
    # tester.test_query("modification_delete", "DELETE", 
    #     f"DELETE FROM test_table WHERE nconst = 'nm{unique_id}';",
    #     skip=False)
    #
    # # Cleanup if necessary (optional - better to use ROLLBACK or a dedicated test DB)
    # # tester.test_query("modification_cleanup", "DELETE ALL", "DELETE FROM test_table;", skip=False)


    # ========================================
    # 3.3 Complex Queries (CTE/Window/Set Ops)
    # ========================================
    tester.test_query("cte_simple", "CTE", 
        "WITH cte AS (SELECT nconst FROM name_basics LIMIT 5) SELECT * FROM cte;")
    
    tester.test_query("window_function", "Window Function (ROW_NUMBER)", 
        "SELECT nconst, primaryName, ROW_NUMBER() OVER (ORDER BY birthYear) AS rn FROM name_basics WHERE birthYear IS NOT NULL LIMIT 10;")
    
    tester.test_query("set_union", "Set Operation UNION", 
        "(SELECT nconst FROM name_basics WHERE birthYear > 1990 LIMIT 5) UNION (SELECT nconst FROM name_basics WHERE birthYear < 1950 LIMIT 5);")

    # ========================================
    # 3.4 Error Handling
    # ========================================
    tester.test_query("error_invalid_table", "Invalid table", 
        "SELECT * FROM non_existent_table;")
    
    # Constraint test requires a table with a NOT NULL constraint on one column
    # The current query is likely to fail on both if name_basics.nconst is the PK (which it is likely to be)
    tester.test_query("error_constraint", "Constraint violation (NULL)", 
        "INSERT INTO name_basics (nconst) VALUES (NULL);")

    # ========================================
    # Generate report and Cleanup
    # ========================================
    tester.generate_report()
    db.close()
    print("\n✓ Comparison testing complete!")

if __name__ == "__main__":
    main()
