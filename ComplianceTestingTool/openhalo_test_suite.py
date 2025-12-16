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
import numpy as np # Utile pour positionner les barres

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
            self.openhalo_conn.autocommit = False # Important pour les tests de transaction
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
        # On protège la fermeture d'OpenHalo
        if self.openhalo_conn:
            try:
                self.openhalo_conn.close()
                print("\nClosed OpenHalo connection.")
            except:
                pass # Déjà fermé ou erreur réseau, on ignore

        # On protège la fermeture de MySQL
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
    Génère des requêtes SQL aléatoires mais valides basées sur la structure de la table.
    """
    
    # Définition du schéma pour savoir quoi générer
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
        # Ajout d'autres tables si nécessaire
    }

    def __init__(self, table_name):
        self.table = table_name
        self.meta = self.SCHEMA.get(table_name)
        if not self.meta:
            raise ValueError(f"Table {table_name} non définie dans le SCHEMA")

    def _get_random_value(self, column):
        """Génère une valeur fictive pour les clauses WHERE (très basique)"""
        if column in self.meta['numeric']:
            return str(random.randint(1950, 2020))
        else:
            # Pour les strings, on renvoie une valeur générique ou un pattern
            return "'%actor%'" if 'profession' in column else "'TestValue'"

    def build_select(self, mode='random', limit=10):
        """
        Génère un SELECT dynamique.
        modes: 'star', 'single', 'multi', 'random'
        """
        cols = self.meta['columns']
        
        # Choix des colonnes
        if mode == 'random':
            mode = random.choice(['star', 'single', 'multi'])

        if mode == 'star':
            selected_cols = "*"
        elif mode == 'single':
            selected_cols = random.choice(cols)
        elif mode == 'multi':
            # Prend entre 2 et le max de colonnes
            nb_cols = random.randint(2, len(cols))
            selected_cols = ", ".join(random.sample(cols, nb_cols))
        
        query = f"SELECT {selected_cols} FROM {self.table}"
        
        # Ajout optionnel d'un WHERE (1 fois sur 3)
        if random.random() > 0.7:
            query += self._build_random_where_clause()
            
        # Ajout optionnel d'un ORDER BY (1 fois sur 3)
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
        
        # On préfère faire des AVG/SUM sur des nombres
        if agg_func in ['AVG', 'SUM']:
            col = random.choice(self.meta['numeric'])
        else:
            col = random.choice(self.meta['columns']) # COUNT/MIN/MAX marchent sur tout
            
        # Parfois on groupe, parfois non
        group_by = ""
        group_col = random.choice(self.meta['string']) # On groupe souvent par string (ex: profession)
        
        if random.choice([True, False]):
            base = f"SELECT {group_col}, {agg_func}({col}) FROM {self.table} GROUP BY {group_col}"
            # Souvent besoin d'un order by avec group by pour la cohérence
            base += f" ORDER BY {agg_func}({col}) DESC LIMIT 10;"
            return f"Dynamic AGG ({agg_func} by {group_col})", base
        else:
            return f"Dynamic AGG Simple ({agg_func})", f"SELECT {agg_func}({col}) FROM {self.table};"

    def build_complex_where(self, limit=10):
        """Génère des WHERE avec IN, BETWEEN et OR"""
        cols = self.meta['columns']
        # On choisit 2 colonnes au hasard pour faire un condition complexe
        col1 = random.choice(cols)
        
        mode = random.choice(['IN', 'BETWEEN', 'OR_MIX'])
        query = f"SELECT * FROM {self.table} WHERE "
        
        if mode == 'IN':
            # Génère (val1, val2, val3)
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
            # Test des opérations arithmétiques
            calc = random.choice([
                f"({num_col} * 2)", 
                f"({num_col} % 10)", # Modulo
                f"ABS({num_col} - 2000)"
            ])
            query = f"SELECT {num_col}, {calc} as math_res FROM {self.table} WHERE {num_col} IS NOT NULL"

        query += f" LIMIT {limit};"
        return f"Dyn Scalar Func ({func_type})", query

    def build_subquery(self, limit=10):
        """Génère une sous-requête (WHERE col > (SELECT AVG...))"""
        # On utilise une colonne numérique pour comparer
        num_col = random.choice(self.meta['numeric'])
        
        # Sous-requête qui calcule une moyenne ou un min
        sub = f"(SELECT AVG({num_col}) FROM {self.table} WHERE {num_col} IS NOT NULL)"
        
        # Requête principale
        query = f"SELECT * FROM {self.table} WHERE {num_col} > {sub} LIMIT {limit};"
        return f"Dyn Subquery (Compare to AVG)", query

    def build_dml_lifecycle(self):
        """
        Génère une suite INSERT -> UPDATE -> SELECT -> DELETE.
        Retourne une liste de tuples (desc, sql).
        """
        # ID unique pour ne pas casser la prod
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
            # On vérifie si la connexion est active, sinon on reconnecte (3 tentatives)
            if conn:
                conn.ping(reconnect=True, attempts=3, delay=1)
        except Exception:
            # Si le ping échoue, on laisse le curseur tenter sa chance (et échouer proprement)
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
            # Ne pas rollback systématiquement ici pour permettre de tester les erreurs transactionnelles
            # mais on rollback en cas d'erreur fatale pour nettoyer la connection
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
            
            # Détection spécifique pour le rapport de compatibilité
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
        # ---- Slowest OpenHalo queries (COMPARATIVE) ----
        # C'est la partie la plus intéressante : Les goulots d'étranglement
        slow_oh = sorted(
            [r for r in oh if r.mean_time > 0],
            key=lambda r: r.mean_time,
            reverse=True
        )[:10]

        print("\n🐢 TOP 10 REQUÊTES LES PLUS LENTES SUR OPENHALO (vs MySQL)")
        print(f"  {'ID':<12} | {'OpenHalo (ms)':>15} | {'MySQL (ms)':>15} | {'Différence':>12}")
        print("-" * 65)
        
        for r in slow_oh:
            oh_time = r.mean_time
            # On cherche le temps correspondant chez MySQL
            my_r = mysql_map.get(r.query_id)
            my_time = my_r.mean_time if my_r else 0
            
            # Calcul de la différence
            diff_str = ""
            if my_time > 0:
                ratio = oh_time / my_time
                if ratio > 1.5:
                    diff_str = f"x{ratio:.1f} plus lent 🔴"
                elif ratio < 0.7:
                    diff_str = f"x{1/ratio:.1f} plus rapide 🟢"
                else:
                    diff_str = "Similaire ⚪"
            else:
                diff_str = "N/A"

            print(f"  {r.query_id:<12} | {oh_time:>15.2f} | {my_time:>15.2f} | {diff_str}")

        # ---- OpenHalo Wins (Faster than MySQL) ----
        fast_oh = []
        for qid, oh_r in oh_map.items():
            my_r = mysql_map.get(qid)
            # On compare uniquement si les deux ont réussi
            if my_r and oh_r.mean_time > 0 and my_r.mean_time > 0:
                # Si OH est au moins 10% plus rapide (ratio < 0.9)
                if oh_r.mean_time < (my_r.mean_time * 0.9):
                    fast_oh.append((qid, oh_r.mean_time, my_r.mean_time))
        
        # Tri par le gain de performance (le plus gros écart en premier)
        fast_oh.sort(key=lambda x: x[2] - x[1], reverse=True)

        print("\n🚀 TOP REQUÊTES OÙ OPENHALO BAT MYSQL (Hall of Fame)")
        print(f"  {'ID':<12} | {'OpenHalo (ms)':>15} | {'MySQL (ms)':>15} | {'Gain':>12}")
        print("-" * 65)
        
        if fast_oh:
            for qid, oh_t, my_t in fast_oh[:10]: # Top 10
                gain = my_t - oh_t
                ratio = my_t / oh_t
                print(f"  {qid:<12} | {oh_t:>15.2f} | {my_t:>15.2f} | -{gain:.1f}ms (x{ratio:.1f})")
        else:
            print("  Aucune victoire significative détectée sur ce dataset.")

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
            # Filtrer les résultats qui commencent par un des préfixes
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
        """Simule un utilisateur actif et mesure les latences"""
        try:
            conn = mysql.connector.connect(**self.db_config)
            cursor = conn.cursor()
        except:
            return [], 1 # Renvoie une liste vide et 1 erreur

        latencies = [] # On stocke le temps de chaque requête ici
        errors = 0
        start_time = time.time()
        
        while time.time() - start_time < self.duration:
            try:
                req_start = time.perf_counter() # Top chrono
                
                # Requête simple de lecture
                cursor.execute("SELECT * FROM name_basics WHERE primaryprofession = 'actor' LIMIT 1")
                cursor.fetchall()
                
                req_end = time.perf_counter() # Fin chrono
                
                # On ajoute la durée en millisecondes (ms) à la liste
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
                all_latencies.extend(lats) # On fusionne les résultats de tous les threads
                total_errors += e

        total_queries = len(all_latencies)
        
        # Calculs statistiques
        if self.duration > 0:
            tps = total_queries / self.duration
        else:
            tps = 0
            
        if all_latencies:
            avg_lat = mean(all_latencies)
            all_latencies.sort()
            # P95 : La latence pire que 95% des utilisateurs
            p95_lat = all_latencies[int(len(all_latencies) * 0.95)]
        else:
            avg_lat = 0
            p95_lat = 0

        print(f"  ➜ TPS (Transac/Sec): {tps:.2f}")
        print(f"  ➜ Latence Moyenne  : {avg_lat:.2f} ms")
        print(f"  ➜ Latence P95      : {p95_lat:.2f} ms")
        print(f"  ➜ Erreurs          : {total_errors}")
        
        # On retourne un dictionnaire, pas juste un float
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
        # executemany est optimisé pour le bulk
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
    openhalo_config = {'host': 'localhost', 'port': 3306, 'user': 'halo', 'password': 'halo', 'database': 'testdb'}
    mysql_config = {'host': 'localhost', 'port': 3309, 'user': 'halo', 'password': 'halo', 'database': 'testdb'}
    
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

    # --- 1. Génération de SELECT dynamiques ---
    # On va générer 10 requêtes de sélection totalement différentes
    print("\n--- Generating 10 Random SELECT/WHERE/ORDER scenarios ---")
    for i in range(1, 11):
        # Le builder renvoie une description et la requête SQL
        desc, sql = builder.build_select(mode='random', limit=random.randint(5, 50))
        
        query_id = f"dyn_sel_{i}"
        tester.test_query(query_id, desc, sql)

    # --- 2. Génération d'Agrégations dynamiques ---
    print("\n--- Generating 5 Random Aggregation scenarios ---")
    for i in range(1, 6):
        desc, sql = builder.build_aggregation()
        
        query_id = f"dyn_agg_{i}"
        tester.test_query(query_id, desc, sql)


    # Phase 3: Filtres Complexes (IN, BETWEEN)
    print("\n--- 3. Génération de Filtres Complexes ---")
    for i in range(1, 6):
        desc, sql = builder.build_complex_where()
        tester.test_query(f"dyn_cplx_{i:02d}", desc, sql)

    # Phase 4: Fonctions Scalaires (String/Math)
    print("\n--- 4. Fonctions Scalaires ---")
    for i in range(1, 6):
        desc, sql = builder.build_scalar_function()
        tester.test_query(f"dyn_func_{i:02d}", desc, sql)

    # Phase 5: Sous-requêtes
    print("\n--- 5. Sous-requêtes ---")
    for i in range(1, 4):
        desc, sql = builder.build_subquery()
        tester.test_query(f"dyn_sub_{i:02d}", desc, sql)

    # Phase 6: Cycle de vie DML (Insert/Update/Delete)
    print("\n--- 6. DML Lifecycle (Safe) ---")
    # On génère une séquence complète
    dml_steps = builder.build_dml_lifecycle()
    for desc, sql in dml_steps:
        # Pour le DML, on ne veut pas l'exécuter 3 fois (sinon erreur duplicate key), donc on force iterations=1 temporairement
        old_iter = tester.iterations
        tester.iterations = 1 
        tester.test_query("dyn_dml", "DML Lifecycle", sql)
        tester.iterations = old_iter

    # --- 4. Data Manipulation (CRUD) ---
    print("\n--- 4. Data Manipulation (CRUD) ---")
    # Using specific ID from MD report: nm9999999
    crud_id = 'nm9999999'
    
    # Nettoyage préventif
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

    # --- 5. Index Management ---
    print("\n--- 5. Index Management ---")

    # --- NETTOYAGE PRÉALABLE (Clean Slate) ---
    # Pour que le test "CREATE INDEX" fonctionne à tous les coups (et mesure vraiment le temps),
    # il faut d'abord supprimer les index s'ils existent déjà.
    
    def safe_drop_index(conn, table, index_name):
        try:
            if conn:
                cursor = conn.cursor()
                cursor.execute(f"DROP INDEX {index_name} ON {table}")
                conn.commit()
                cursor.close()
        except:
            pass # On ignore l'erreur si l'index n'existait pas encore

    # On nettoie sur les deux bases
    safe_drop_index(db.openhalo_conn, table_nb, 'idx_profession')
    safe_drop_index(db.mysql_conn, table_nb, 'idx_profession')
    safe_drop_index(db.openhalo_conn, table_nb, 'idx_birthyear')
    safe_drop_index(db.mysql_conn, table_nb, 'idx_birthyear')

    # --- EXÉCUTION DES TESTS ---
    
    # Test 5.1 : Maintenant ça va marcher car on a fait le ménage avant
    tester.test_query("md_5.1", "CREATE INDEX VARCHAR", 
        f"CREATE INDEX idx_profession ON {table_nb}(primaryprofession);")

    # Test 5.2
    tester.test_query("md_5.2", "CREATE INDEX INT", 
        f"CREATE INDEX idx_birthyear ON {table_nb}(birthyear);")
    
    # Test 5.3 : Vérification
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
        # On tente de changer de DB (ce qui échoue souvent sur OH selon le rapport) 
        # puis d'afficher le status
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
    
    # --- Correction Test 10.2 ---
    
    # Étape 1 : On supprime les acteurs dans film_actor qui n'existent pas dans name_basics
    # (Sinon la création de la FK échouera car les données ne sont pas intègres)
    tester.test_query("md_10.2_pre", "Cleanup Orphan Records", 
        f"DELETE FROM film_actor WHERE nconst NOT IN (SELECT nconst FROM {table_nb});")

    # Étape 2 : Maintenant que les données sont propres, on peut ajouter la FK
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
    # Par défaut, on tente /tmp/
    export_path = "/tmp/test_export.csv"
    
    # TENTATIVE DE DÉTECTION DU DOSSIER AUTORISÉ (MySQL)
    try:
        if db.mysql_conn:
            cursor = db.mysql_conn.cursor()
            cursor.execute("SELECT @@secure_file_priv")
            row = cursor.fetchone()
            cursor.close()
            
            # Si MySQL a une restriction de dossier, on l'utilise
            if row and row[0]:
                secure_path = row[0]
                # On s'assure que le chemin finit bien par / ou \
                if not secure_path.endswith('/') and not secure_path.endswith('\\'):
                    secure_path += '/'
                
                # On génère un nom de fichier unique pour éviter l'erreur "File already exists"
                filename = f"test_export_{random.randint(1000,9999)}.csv"
                export_path = f"{secure_path}{filename}"
                print(f"  [System] MySQL secure path detected. Using: {export_path}")
    except Exception as e:
        print(f"  [System] Warning: Could not detect secure_file_priv: {e}")

    # On lance le test avec le chemin adapté
    # Note : OpenHalo échouera de toute façon (Syntax Error), donc le chemin importe peu pour lui.
    # Pour MySQL, cela devrait maintenant passer au VERT (si l'utilisateur a les droits FILE).
    tester.test_query("md_12.1", "INTO OUTFILE (Expected Fail on OH)", 
        f"SELECT * FROM {table_nb} LIMIT 10 INTO OUTFILE '{export_path.replace(chr(92), '/')}' FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\\n';")
    import subprocess

    # ... dans la section 12 ...
    print("\n--- 12.2 Shell Export (System Command) ---")
    try:
        cmd = f"mysql -P {mysql_config['port']} -h {mysql_config['host']} -u {mysql_config['user']} -p{mysql_config['password']} -e 'USE {mysql_config['database']}; SELECT * FROM {table_nb} LIMIT 5;' | sed 's/\\t/,/g'"
        # On ne l'exécute pas vraiment pour ne pas spammer la console, mais on loggue que c'est un test manuel/système
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

    # --- AJOUT: 9. Show Table Status ---
    # Le rapport indique que cela échoue souvent à cause du contexte de la DB
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

    # --- Génération des Graphiques (TPS et Latence) ---
    try:
        targets = list(results_data.keys())
        tps_vals = [results_data[t]['tps'] for t in targets]
        lat_vals = [results_data[t]['p95_latency'] for t in targets]
        
        # Création d'une figure avec 2 sous-graphiques (1 ligne, 2 colonnes)
        fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 6))
        
        colors = ['#4CAF50', '#2196F3'] # Vert, Bleu

        # --- Graphique 1 : TPS (Débit) ---
        bars1 = ax1.bar(targets, tps_vals, color=colors, width=0.5)
        ax1.set_title('Débit (TPS)\n(Plus c\'est haut, mieux c\'est)', fontsize=12, fontweight='bold')
        ax1.set_ylabel('Transactions / Seconde')
        ax1.grid(axis='y', linestyle='--', alpha=0.5)
        
        # Etiquettes TPS
        for bar in bars1:
            height = bar.get_height()
            ax1.text(bar.get_x() + bar.get_width()/2., height, f'{height:.0f}', ha='center', va='bottom', fontweight='bold')

        # --- Graphique 2 : Latence P95 (Temps de réponse) ---
        bars2 = ax2.bar(targets, lat_vals, color=colors, width=0.5)
        ax2.set_title('Latence P95 (Temps de réponse)\n(Plus c\'est bas, mieux c\'est)', fontsize=12, fontweight='bold')
        ax2.set_ylabel('Millisecondes (ms)')
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

    # --- 15. GRAPHIQUE DES REQUÊTES COMPLEXES (NOUVEAU) ---
    print("\n--- Generating Complex Queries Comparison Graph ---")

    # Liste des IDs des requêtes "lourdes" qu'on veut comparer visuellement
    target_ids = [
        'md_6.1',   # Multi-Table JOIN
        'md_6.2',   # LEFT JOIN + Aggregation
        'md_11.2',  # Correlated Subquery (Souvent lent sur MySQL, rapide sur PG)
        'md_3.4',   # Advanced Grouping
        'md_10.1'   # Constraint Check
    ]
    
    # Extraction des données
    labels = []
    oh_times = []
    mysql_times = []
    
    # On parcourt les résultats pour trouver les temps moyens
    # On utilise un dictionnaire pour accès rapide
    oh_results = {r.query_id: r.mean_time for r in tester.results if r.target == 'OpenHalo'}
    mysql_results = {r.query_id: r.mean_time for r in tester.results if r.target == 'MySQL'}
    
    for qid in target_ids:
        if qid in oh_results and qid in mysql_results:
            labels.append(qid)
            oh_times.append(oh_results[qid])
            mysql_times.append(mysql_results[qid])
            
    # Création du Graphique Comparatif
    if labels:
        try:
            x = np.arange(len(labels))  # Position des labels
            width = 0.35  # Largeur des barres
            
            fig, ax = plt.subplots(figsize=(12, 6))
            
            rects1 = ax.bar(x - width/2, oh_times, width, label='OpenHalo', color='#4CAF50')
            rects2 = ax.bar(x + width/2, mysql_times, width, label='MySQL', color='#2196F3')
            
            # Textes et Titres
            ax.set_ylabel('Temps d\'exécution (ms)')
            ax.set_title('Performance sur Requêtes Complexes (Latence Moyenne)')
            ax.set_xticks(x)
            ax.set_xticklabels(labels)
            ax.legend()
            ax.grid(axis='y', linestyle='--', alpha=0.3)
            
            # Ajout des valeurs au dessus des barres
            # Ajout des valeurs au dessus des barres
            def autolabel(rects):
                for rect in rects:
                    height = rect.get_height()
                    # CORRECTION ICI : on utilise get_width() et get_x()
                    width = rect.get_width()
                    x_pos = rect.get_x()
                    
                    ax.annotate(f'{height:.1f}',
                                xy=(x_pos + width / 2, height),
                                xytext=(0, 3),  # 3 points vertical offset
                                textcoords="offset points",
                                ha='center', va='bottom', fontsize=8)

            autolabel(rects1)
            autolabel(rects2)
            
            plt.tight_layout()
            plt.savefig("benchmark_complex_queries.png", dpi=300)
            print(f"📊 Graphique requêtes complexes généré : benchmark_complex_queries.png")
            
        except Exception as e:
            print(f"⚠ Erreur graphe complexe : {e}")
    else:
        print("⚠ Pas assez de données pour le graphe complexe.")


    # --- Graphique 3 : Scatter Plot (Comparaison directe) ---
    # On crée une nouvelle figure pour ne pas surcharger la première
    plt.figure(figsize=(10, 10))
    
    # On récupère les paires de temps (uniquement quand les deux ont réussi)
    common_ids = []
    x_mysql = []
    y_openhalo = []
    
    for r in tester.results:
        if r.target == 'OpenHalo':
            # Trouver le résultat MySQL correspondant
            my_res = next((m for m in tester.results if m.target == 'MySQL' and m.query_id == r.query_id), None)
            if my_res and r.mean_time > 0 and my_res.mean_time > 0:
                # On filtre les outliers extrêmes (> 1000ms) pour garder le graphe lisible
                if r.mean_time < 2000 and my_res.mean_time < 2000:
                    common_ids.append(r.query_id)
                    y_openhalo.append(r.mean_time)
                    x_mysql.append(my_res.mean_time)

    # Tracer les points
    plt.scatter(x_mysql, y_openhalo, color='purple', alpha=0.6, label='Requêtes')
    
    # Tracer la ligne diagonale (y=x)
    limit = max(max(x_mysql or [1]), max(y_openhalo or [1]))
    plt.plot([0, limit], [0, limit], 'k--', label='Égalité parfaite')
    
    # Zone verte (OpenHalo plus rapide)
    plt.fill_between([0, limit], 0, [0, limit], color='green', alpha=0.1, label='Zone OpenHalo Rapide')
    # Zone rouge (MySQL plus rapide)
    plt.fill_between([0, limit], [0, limit], limit, color='red', alpha=0.1, label='Zone MySQL Rapide')

    plt.xlabel('Temps MySQL (ms)')
    plt.ylabel('Temps OpenHalo (ms)')
    plt.title('Comparaison Directe des Temps d\'Exécution')
    plt.legend()
    plt.grid(True, linestyle='--', alpha=0.5)
    
    plt.savefig("benchmark_scatter_comparison.png", dpi=300)
    print(f"📊 Graphique Scatter Plot généré : benchmark_scatter_comparison.png")

    # --- Finalize ---
    tester.generate_report()
    tester.generate_summary()
    db.close()
    print("\n✓ Full Markdown Compatibility Suite Complete!")


if __name__ == "__main__":
    main()
