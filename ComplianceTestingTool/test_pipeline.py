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
            # Ne sort pas du programme si MySQL échoue, mais continue avec OpenHalo seul
            print("Warning: Continuing tests with OpenHalo only.")
    
    def close(self):
        if self.openhalo_conn:
            self.openhalo_conn.close()
            print("\nClosed OpenHalo connection.")
        if self.mysql_conn:
            self.mysql_conn.close()
            print("Closed MySQL connection.")

# --- Schema Inspector (Nouveau pour les Tests Dynamiques) ---

class SchemaInspector:
    """Simule l'inspection du schéma pour générer des requêtes dynamiques."""
    
    # Information du schéma basée sur l'utilisation courante de IMDB 'name_basics'
    # NOTE: Si votre table a des colonnes différentes, modifiez ces listes.
    SCHEMA = {
        'name_basics': {
            'numeric_columns': ['birthYear', 'deathYear'],
            'string_columns': ['nconst', 'primaryName', 'primaryProfession'],
            'all_columns': ['nconst', 'primaryName', 'birthYear', 'deathYear', 'primaryProfession']
        }
    }
    
    @staticmethod
    def get_columns(table: str, type_filter: str) -> List[str]:
        """Retourne les colonnes selon le type spécifié."""
        if type_filter == 'numeric':
            return SchemaInspector.SCHEMA.get(table, {}).get('numeric_columns', [])
        elif type_filter == 'string':
            return SchemaInspector.SCHEMA.get(table, {}).get('string_columns', [])
        elif type_filter == 'all':
            return SchemaInspector.SCHEMA.get(table, {}).get('all_columns', [])
        return []

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
            if query_upper.startswith('SELECT') or query_upper.startswith('WITH') or query_upper.startswith('CALL'):
                results = cursor.fetchall()
            else:
                # For modification queries (INSERT, UPDATE, DELETE, DDL)
                results = []
                # Commit is crucial for DML/DDL tests
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
                # Use a specific limit for warming up to keep it fast
                if query.strip().upper().startswith('SELECT') and 'LIMIT' not in query.upper():
                    warmup_query = f"{query.rstrip(';')} LIMIT 1;"
                else:
                    warmup_query = query
                
                self.execute_query(warmup_query, conn)
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
        
        # Regenerate summary data for clean JSON
        results_openhalo = [r for r in self.results if r.target == 'OpenHalo']
        results_mysql = [r for r in self.results if r.target == 'MySQL']

        output_data = {
            'summary_openhalo': {
                "total": len(results_openhalo),
                "ok": sum(1 for r in results_openhalo if r.status == "OK"),
                "warning": sum(1 for r in results_openhalo if r.status == "Warning"),
                "problem": sum(1 for r in results_openhalo if r.status == "Problem"),
                "error": sum(1 for r in results_openhalo if r.status == "Error"),
                "unsupported": sum(1 for r in results_openhalo if r.status == "Unsupported"),
                "skipped": sum(1 for r in results_openhalo if r.status == "Skipped")
            },
            'summary_mysql': {
                "total": len(results_mysql),
                "ok": sum(1 for r in results_mysql if r.status == "OK"),
                "warning": sum(1 for r in results_mysql if r.status == "Warning"),
                "problem": sum(1 for r in results_mysql if r.status == "Problem"),
                "error": sum(1 for r in results_mysql if r.status == "Error"),
                "unsupported": sum(1 for r in results_mysql if r.status == "Unsupported"),
                "skipped": sum(1 for r in results_mysql if r.status == "Skipped")
            },
            "queries": [asdict(r) for r in self.results]
        }


        with open(output_file, 'w') as f:
            json.dump(output_data, f, indent=2)
        print(f"\n✓ Full comparison report saved to {output_file}")


def main():
    # --- Configuration ---
    # Configuration OpenHalo (Port 3306 par défaut)
    openhalo_config = {
        'host': 'localhost',
        'port': 3306,
        'user': 'halo',
        'password': 'halo',
        'database': 'testdb'
    }
    # Configuration MySQL standard (Port 3309 confirmé)
    mysql_config = {
        'host': 'localhost',
        'port': 3309, 
        'user': 'halo',
        'password': 'halo',
        'database': 'testdb'
    }
    
    # --- Setup ---
    print("="*60)
    print("OpenHalo vs MySQL Performance Comparison - Dynamic Testing")
    print("="*60)

    db = DualDatabaseConnector(openhalo_config, mysql_config)
    db.connect()

    tester = DualQueryTester(db, iterations=10, warmup=2)
    
    # Create a unique ID for modification tests to prevent constraint errors
    unique_id = str(uuid.uuid4())[:8]
    test_table = "name_basics" # Table principale à tester

    # --- Test Queries ---
    
    # ========================================
    # 3.1 Static Selection Queries (Simple)
    # ========================================
    print("\n" + "="*60)
    print("3.1 Static Selection Queries (Simple)")
    print("="*60)
    
    tester.test_query("select_simple", "Simple SELECT", 
        f"SELECT * FROM {test_table} LIMIT 10;")
    
    tester.test_query("select_with_condition", "SELECT with WHERE", 
        f"SELECT * FROM {test_table} WHERE birthYear > 1980 LIMIT 10;")
    
    tester.test_query("select_projection", "SELECT specific columns", 
        f"SELECT nconst, primaryName, primaryProfession FROM {test_table} LIMIT 10;")
    
    tester.test_query("select_like", "SELECT with LIKE", 
        f"SELECT * FROM {test_table} WHERE primaryProfession LIKE '%actor%' LIMIT 10;")
    
    tester.test_query("select_aggregate", "Aggregates (GROUP BY/AVG/COUNT)", 
        f"SELECT COUNT(*), AVG(birthYear) FROM {test_table} GROUP BY primaryProfession LIMIT 10;")
    
    tester.test_query("select_subquery", "Subquery IN", 
        f"SELECT * FROM {test_table} WHERE nconst IN (SELECT nconst FROM {test_table} LIMIT 5);")
    
    tester.test_query("self_inner_join", "Self JOIN", 
        f"SELECT a.nconst, b.primaryName FROM {test_table} a INNER JOIN {test_table} b ON a.nconst = b.nconst LIMIT 5;")

    # --- NOUVELLE SECTION DE TESTS PLUS COMPLEXES ---
    
    # ========================================
    # 3.5 Complex Joins and Set Operations
    # ========================================
    print("\n" + "="*60)
    print("3.5 Complex Joins and Set Operations")
    print("="*60)
    
    tester.test_query("join_left", "LEFT JOIN", 
        f"SELECT a.nconst, b.primaryName FROM {test_table} a LEFT JOIN {test_table} b ON a.nconst = b.nconst WHERE a.birthYear < 1960 LIMIT 5;")
    
    tester.test_query("join_triple", "Triple JOIN (Complex)", 
        f"""
        SELECT 
            T1.primaryName, T2.primaryName
        FROM 
            {test_table} T1 
        INNER JOIN 
            {test_table} T2 ON T1.birthYear = T2.birthYear
        INNER JOIN 
            {test_table} T3 ON T1.primaryProfession = T3.primaryProfession
        WHERE T1.birthYear IS NOT NULL 
        LIMIT 10;
        """)

    tester.test_query("set_intersect_like", "Set Operation INTERSECT (via JOIN)", 
        f"""
        SELECT 
            T1.nconst 
        FROM 
            {test_table} T1 
        INNER JOIN 
            {test_table} T2 ON T1.nconst = T2.nconst
        WHERE 
            T1.primaryProfession LIKE '%writer%' AND T2.primaryProfession LIKE '%director%'
        LIMIT 10;
        """)
        
    # ========================================
    # 3.6 Scalar and Date/Time Functions
    # ========================================
    print("\n" + "="*60)
    print("3.6 Scalar and Date/Time Functions")
    print("="*60)
    
    # NOTE: Ces requêtes stressent les fonctions MySQL, souvent implémentées différemment dans OpenHalo
    
    tester.test_query("scalar_concat", "Scalar Function (CONCAT)", 
        f"SELECT CONCAT(primaryName, ' (', birthYear, ')') FROM {test_table} LIMIT 10;")
        
    tester.test_query("scalar_string", "Scalar Function (SUBSTRING/LENGTH)", 
        f"SELECT SUBSTRING(primaryName, 1, 5), LENGTH(primaryName) FROM {test_table} WHERE LENGTH(primaryName) > 10 LIMIT 10;")

    # Simulation d'opérations date/time (nécessite une colonne date/datetime pour être parfaite, ici on utilise un calcul sur birthYear)
    tester.test_query("scalar_math", "Scalar Function (Arithmetic)", 
        f"SELECT (2023 - birthYear) AS age FROM {test_table} WHERE birthYear IS NOT NULL LIMIT 10;")
        
    tester.test_query("aggregate_distinct", "Aggregate with DISTINCT", 
        f"SELECT COUNT(DISTINCT primaryProfession) FROM {test_table};")
        
    # ========================================
    # 4.0 Dynamic Column-Based Queries
    # ========================================
    print("\n" + "="*60)
    print("4.0 Dynamic Column-Based Queries")
    print("="*60)
    
    # 4.1 Test de Projection (SELECT) sur toutes les colonnes
    for col in SchemaInspector.get_columns(test_table, 'all'):
        query_id = f"dynamic_proj_{col}"
        query_type = f"SELECT projection on {col}"
        query = f"SELECT {col} FROM {test_table} LIMIT 100;"
        tester.test_query(query_id, query_type, query)

    # 4.2 Test de Condition (WHERE) sur colonnes String
    for col in SchemaInspector.get_columns(test_table, 'string'):
        if col != 'nconst': # Skip nconst for LIKE test simplicity
            query_id = f"dynamic_where_like_{col}"
            query_type = f"SELECT WHERE LIKE on {col}"
            # Utilise une recherche partielle pour forcer un scan ou une utilisation d'index plus complexe
            query = f"SELECT {col}, primaryName FROM {test_table} WHERE {col} LIKE '%actor%' LIMIT 10;"
            tester.test_query(query_id, query_type, query)

    # 4.3 Test de Condition (WHERE) sur colonnes Numériques
    for col in SchemaInspector.get_columns(test_table, 'numeric'):
        query_id = f"dynamic_where_num_{col}"
        query_type = f"SELECT WHERE > on {col}"
        # Utilise une condition d'inégalité simple
        query = f"SELECT {col}, primaryName FROM {test_table} WHERE {col} > 1980 LIMIT 100;"
        tester.test_query(query_id, query_type, query)

    # 4.4 Test d'Agrégation (GROUP BY) sur toutes les colonnes String
    for col in SchemaInspector.get_columns(test_table, 'string'):
        query_id = f"dynamic_groupby_{col}"
        query_type = f"SELECT COUNT GROUP BY on {col}"
        # Compte les occurrences par catégorie de chaîne
        query = f"SELECT {col}, COUNT(*) FROM {test_table} GROUP BY {col} LIMIT 10;"
        tester.test_query(query_id, query_type, query)
    
    # ========================================
    # 4.5 Dynamic Modification Query (Transactional Test)
    # ========================================
    print("\n" + "="*60)
    print("4.5 Dynamic Modification Query (INSERT/UPDATE/DELETE)")
    print("="*60)
    
    # Crée une table de test temporaire pour les modifications
    temp_table = f"temp_test_{unique_id}"
    create_query = f"""
    CREATE TABLE IF NOT EXISTS {temp_table} (
        id VARCHAR(10) PRIMARY KEY,
        name VARCHAR(255),
        val INT
    );
    """
    
    # Exécuter la création de table sur les deux connexions (Étape de préparation)
    print(f"  > Creating temporary table: {temp_table}")
    for conn_name, conn in [('OpenHalo', db.openhalo_conn), ('MySQL', db.mysql_conn)]:
        if conn:
            try:
                cursor = conn.cursor()
                cursor.execute(create_query)
                conn.commit()
                cursor.close()
                print(f"  [{conn_name}] Temp table created/verified.")
            except Exception as e:
                print(f"  [{conn_name}] ✗ Failed to create temp table: {e}")

    # INSERT/UPDATE/DELETE sur la table dynamique temporaire
    insert_query = f"INSERT INTO {temp_table} (id, name, val) VALUES ('{unique_id}', 'Dynamic Test', 100);"
    tester.test_query("modification_insert_dyn", "INSERT (Dynamic)", insert_query, skip=False)
    
    update_query = f"UPDATE {temp_table} SET val = 200 WHERE id = '{unique_id}';"
    tester.test_query("modification_update_dyn", "UPDATE (Dynamic)", update_query, skip=False)
    
    delete_query = f"DELETE FROM {temp_table} WHERE id = '{unique_id}';"
    tester.test_query("modification_delete_dyn", "DELETE (Dynamic)", delete_query, skip=False)
    
    # Nettoyage de la table temporaire (Étape de nettoyage)
    drop_query = f"DROP TABLE {temp_table};"
    print(f"  > Dropping temporary table: {temp_table}")
    for conn_name, conn in [('OpenHalo', db.openhalo_conn), ('MySQL', db.mysql_conn)]:
        if conn:
            try:
                cursor = conn.cursor()
                cursor.execute(drop_query)
                conn.commit()
                cursor.close()
                print(f"  [{conn_name}] Temp table dropped.")
            except Exception as e:
                print(f"  [{conn_name}] ✗ Failed to drop temp table: {e}")

    # ========================================
    # 3.3 Complex Queries (CTE/Window/Set Ops)
    # ========================================
    print("\n" + "="*60)
    print("3.3 Complex Queries (CTE/Window/Set Ops)")
    print("="*60)

    tester.test_query("cte_simple", "CTE", 
        "WITH cte AS (SELECT nconst FROM name_basics LIMIT 5) SELECT * FROM cte;")
    
    tester.test_query("window_function", "Window Function (ROW_NUMBER)", 
        "SELECT nconst, primaryName, ROW_NUMBER() OVER (ORDER BY birthYear) AS rn FROM name_basics WHERE birthYear IS NOT NULL LIMIT 10;")
    
    tester.test_query("set_union", "Set Operation UNION", 
        "(SELECT nconst FROM name_basics WHERE birthYear > 1990 LIMIT 5) UNION (SELECT nconst FROM name_basics WHERE birthYear < 1950 LIMIT 5);")
        
    # ========================================
    # 3.7 DDL and Maintenance Operations (Test transactionnel)
    # ========================================
    print("\n" + "="*60)
    print("3.7 DDL and Maintenance Operations (Création/Suppression de table)")
    print("="*60)
    
    ddl_test_table = f"ddl_test_{unique_id}"
    
    # Test DDL CREATE TABLE
    create_ddl_query = f"CREATE TABLE {ddl_test_table} (id INT PRIMARY KEY, description VARCHAR(255));"
    tester.test_query("ddl_create_table", "DDL CREATE TABLE", create_ddl_query, skip=False)
    
    # Test DDL ALTER TABLE (Ajout d'une colonne)
    alter_ddl_query = f"ALTER TABLE {ddl_test_table} ADD COLUMN test_col INT;"
    tester.test_query("ddl_alter_table", "DDL ALTER TABLE", alter_ddl_query, skip=False)

    # Test DDL DROP TABLE (Nettoyage)
    drop_ddl_query = f"DROP TABLE {ddl_test_table};"
    tester.test_query("ddl_drop_table", "DDL DROP TABLE", drop_ddl_query, skip=False)
    
    # ========================================
    # 3.4 Error Handling
    # ========================================
    print("\n" + "="*60)
    print("3.4 Error Handling Queries")
    print("="*60)
    
    tester.test_query("error_invalid_table", "Invalid table", 
        "SELECT * FROM non_existent_table;")
    
    tester.test_query("error_constraint", "Constraint violation (NULL)", 
        f"INSERT INTO {test_table} (nconst) VALUES (NULL);") # Assuming nconst is NOT NULL

    # ========================================
    # Generate report and Cleanup
    # ========================================
    tester.generate_report()
    db.close()
    print("\n✓ Comparison testing complete!")

if __name__ == "__main__":
    main()
