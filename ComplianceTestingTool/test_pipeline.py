"""
OpenHalo Performance Testing Pipeline
Tests queries using OpenHalo
"""

import time
import json
import mysql.connector
from dataclasses import dataclass, asdict
from typing import List, Dict, Tuple
from statistics import mean, median
import sys
import uuid

@dataclass
class QueryResult:
    query_id: str
    query_type: str
    times: List[float]
    mean_time: float
    median_time: float
    status: str
    rows: int
    error: str = None

class DatabaseConnector:
    def __init__(self, config: Dict):
        self.config = config
        self.conn = None
    
    def connect(self):
        """Establish connection to OpenHalo"""
        try:
            self.conn = mysql.connector.connect(**self.config)
            self.conn.autocommit = False
            print("✓ Connected to OpenHalo")
        except Exception as e:
            print(f"✗ OpenHalo connection failed: {e}")
            sys.exit(1)
    
    def close(self):
        if self.conn:
            self.conn.close()

class QueryTester:
    def __init__(self, db_connector: DatabaseConnector, iterations: int = 10, warmup: int = 3):
        self.db = db_connector
        self.iterations = iterations
        self.warmup = warmup
        self.results = []

    def execute_query(self, query: str) -> Tuple[List, float]:
        """Execute a query and return results + execution time"""
        cursor = self.db.conn.cursor()
        try:
            start = time.perf_counter()
            cursor.execute(query)
            
            # Récupérer résultats pour SELECT et WITH (CTE)
            query_upper = query.strip().upper()
            if query_upper.startswith('SELECT') or query_upper.startswith('WITH'):
                results = cursor.fetchall()
            else:
                results = []
                self.db.conn.commit()
            
            end = time.perf_counter()
            return results, (end - start) * 1000  # ms
            
        except mysql.connector.Error as e:
            self.db.conn.rollback()
            raise e
        finally:
            cursor.close()

    def warmup_query(self, query: str):
        for _ in range(self.warmup):
            try:
                self.execute_query(query)
            except Exception:
                pass

    def classify_performance(self, mean_time: float) -> str:
        if mean_time <= 50:
            return "OK"
        elif mean_time <= 200:
            return "Warning"
        else:
            return "Problem"

    def test_query(self, query_id: str, query_type: str, query: str, skip: bool = False):
        print(f"\nTesting: {query_id} ({query_type})")
        
        if skip:
            result = QueryResult(
                query_id=query_id,
                query_type=query_type,
                times=[],
                mean_time=0,
                median_time=0,
                status="Skipped",
                rows=0,
                error="Query type not tested (potentially unsupported by OpenHalo)"
            )
            self.results.append(result)
            print(f"  ⊘ Skipped (not tested)")
            return
        
        times = []
        rows_count = 0
        
        try:
            # Warmup
            self.warmup_query(query)
            
            # Mesures
            for _ in range(self.iterations):
                results, elapsed = self.execute_query(query)
                times.append(elapsed)
                if rows_count == 0:
                    rows_count = len(results)
            
            mean_time = mean(times)
            median_time = median(times)
            status = self.classify_performance(mean_time)
            
            result = QueryResult(
                query_id=query_id,
                query_type=query_type,
                times=times,
                mean_time=mean_time,
                median_time=median_time,
                status=status,
                rows=rows_count
            )
            print(f"  Mean: {mean_time:.2f}ms, Median: {median_time:.2f}ms, Rows: {rows_count}, Status: {status}")
            self.results.append(result)
            
        except Exception as e:
            # Distinguer les erreurs attendues des vraies erreurs
            error_msg = str(e)
            if "Unread result found" in error_msg:
                status = "Unsupported"
                error = f"OpenHalo may not support this query type: {error_msg}"
            else:
                status = "Error"
                error = error_msg
            
            result = QueryResult(
                query_id=query_id,
                query_type=query_type,
                times=[],
                mean_time=0,
                median_time=0,
                status=status,
                rows=0,
                error=error
            )
            self.results.append(result)
            symbol = "⚠" if status == "Unsupported" else "✗"
            print(f"  {symbol} {status}: {error}")

    def generate_report(self, output_file: str = "openhalo_test_results.json"):
        print("\n" + "="*60)
        print("TEST REPORT")
        print("="*60)
        
        total = len(self.results)
        ok_count = sum(1 for r in self.results if r.status == "OK")
        warning_count = sum(1 for r in self.results if r.status == "Warning")
        problem_count = sum(1 for r in self.results if r.status == "Problem")
        error_count = sum(1 for r in self.results if r.status == "Error")
        unsupported_count = sum(1 for r in self.results if r.status == "Unsupported")
        skipped_count = sum(1 for r in self.results if r.status == "Skipped")
        
        print(f"\nTotal queries: {total}")
        print(f"  OK:          {ok_count} ({ok_count/total*100:.1f}%)")
        print(f"  Warning:     {warning_count} ({warning_count/total*100:.1f}%)")
        print(f"  Problem:     {problem_count} ({problem_count/total*100:.1f}%)")
        print(f"  Unsupported: {unsupported_count} ({unsupported_count/total*100:.1f}%)")
        print(f"  Error:       {error_count} ({error_count/total*100:.1f}%)")
        print(f"  Skipped:     {skipped_count} ({skipped_count/total*100:.1f}%)")
        
        if unsupported_count > 0:
            print("\n--- Unsupported by OpenHalo ---")
            for r in self.results:
                if r.status == "Unsupported":
                    print(f"  {r.query_id} ({r.query_type})")
        
        if error_count > 0:
            print("\n--- Errors ---")
            for r in self.results:
                if r.status == "Error":
                    print(f"  {r.query_id}: {r.error}")
        
        output_data = {
            "summary": {
                "total": total,
                "ok": ok_count,
                "warning": warning_count,
                "problem": problem_count,
                "error": error_count
            },
            "queries": [asdict(r) for r in self.results]
        }
        
        with open(output_file, 'w') as f:
            json.dump(output_data, f, indent=2)
        print(f"\n✓ Report saved to {output_file}")

def main():
    openhalo_config = {
        'host': 'localhost',
        'port': 3306,
        'user': 'halo',
        'password': 'halo',
        'database': 'testdb'
    }

    print("="*60)
    print("OpenHalo Performance Testing Pipeline")
    print("="*60)

    db = DatabaseConnector(openhalo_config)
    db.connect()

    tester = QueryTester(db, iterations=10, warmup=2)

    # ========================================
    # 3.1 Selection Queries
    # ========================================
    tester.test_query("select_simple", "Simple SELECT", 
        "SELECT * FROM name_basics LIMIT 10;")
    
    tester.test_query("select_with_condition", "SELECT with WHERE", 
        "SELECT * FROM name_basics WHERE birthYear > 1980 LIMIT 10;")
    
    tester.test_query("select_projection", "SELECT specific columns", 
        "SELECT nconst, primaryName, primaryProfession FROM name_basics LIMIT 10;")
    
    tester.test_query("select_like", "SELECT with LIKE", 
        "SELECT * FROM name_basics WHERE primaryProfession LIKE '%actor%' LIMIT 10;")
    
    tester.test_query("select_aggregate", "Aggregates", 
        "SELECT COUNT(*), AVG(birthYear) FROM name_basics GROUP BY primaryProfession LIMIT 10;")
    
    tester.test_query("select_subquery", "Subquery IN", 
        "SELECT * FROM name_basics WHERE nconst IN (SELECT nconst FROM name_basics LIMIT 5);")
    
    tester.test_query("self_inner_join", "Self JOIN", 
        "SELECT a.nconst, b.primaryName FROM name_basics a INNER JOIN name_basics b ON a.nconst = b.nconst LIMIT 5;")

    # ========================================
    # 3.2 Modification Queries
    # ========================================

    #INSERT, UPDATE, DELETE

    # ========================================
    # 3.3 Complex Queries
    # ========================================
    tester.test_query("cte_simple", "CTE", 
        "WITH cte AS (SELECT * FROM name_basics LIMIT 5) SELECT * FROM cte;")
    
    tester.test_query("window_function", "Window Function", 
        "SELECT nconst, primaryName, ROW_NUMBER() OVER (ORDER BY birthYear) AS rn FROM name_basics WHERE birthYear IS NOT NULL LIMIT 10;")
    
    # UNION sans parenthèses complexes (OpenHalo peut avoir du mal avec la syntaxe)
    tester.test_query("set_union", "Set Operation UNION", 
        "(SELECT nconst FROM name_basics WHERE birthYear > 1990 LIMIT 5) UNION (SELECT nconst FROM name_basics WHERE birthYear < 1950 LIMIT 5);")

    # ========================================
    # 3.4 Error Handling
    # ========================================
    tester.test_query("error_invalid_table", "Invalid table", 
        "SELECT * FROM non_existent_table;")
    
    tester.test_query("error_constraint", "Constraint violation", 
        "INSERT INTO name_basics (nconst) VALUES (NULL);")

    # ========================================
    # Generate report
    # ========================================
    tester.generate_report()
    db.close()
    print("\n✓ Done!")

if __name__ == "__main__":
    main()
