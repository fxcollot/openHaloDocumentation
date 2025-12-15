## Write in Openhalo container 
``` sh
python3 /home/halo/openhalo_test_suite.py
```
## Output 
```
============================================================
OpenHalo vs MySQL - Full Markdown Compatibility Suite
============================================================
Attempting to connect to OpenHalo...
✓ Connected to OpenHalo (Port: 3308)
Attempting to connect to MySQL...
✗ MySQL connection failed: 2003 (HY000): Can't connect to MySQL server on 'localhost:3306' (111)
Warning: Continuing tests with OpenHalo only.

--- 1. Basic Queries ---

Testing: md_1.1 (Simple Field Query)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_1.2 (Multi-Criteria Pattern Match)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- 2. Filtering and Sorting ---

Testing: md_2.1 (ORDER BY Multiple Conditions)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- 3. Aggregation and Statistics ---

Testing: md_3.1 (GROUP BY with COUNT)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_3.2 (AVG Aggregation Multi Column)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_3.3 (MIN/MAX Functions)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_3.4 (Advanced Grouping (FLOOR))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- Generating 10 Random SELECT/WHERE/ORDER scenarios ---

Testing: dyn_sel_1 (Dynamic SELECT (single))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_sel_2 (Dynamic SELECT (single))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_sel_3 (Dynamic SELECT (star))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_sel_4 (Dynamic SELECT (multi))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_sel_5 (Dynamic SELECT (multi))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_sel_6 (Dynamic SELECT (multi))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_sel_7 (Dynamic SELECT (star))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_sel_8 (Dynamic SELECT (star))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_sel_9 (Dynamic SELECT (star))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_sel_10 (Dynamic SELECT (single))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- Generating 5 Random Aggregation scenarios ---

Testing: dyn_agg_1 (Dynamic AGG Simple (MIN))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_agg_2 (Dynamic AGG (MAX by primaryprofession))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_agg_3 (Dynamic AGG (MIN by nconst))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_agg_4 (Dynamic AGG (MAX by nconst))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_agg_5 (Dynamic AGG Simple (MIN))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- 3. Génération de Filtres Complexes ---

Testing: dyn_cplx_01 (Dyn Complex Filter (IN))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_cplx_02 (Dyn Complex Filter (BETWEEN))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_cplx_03 (Dyn Complex Filter (OR_MIX))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_cplx_04 (Dyn Complex Filter (IN))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_cplx_05 (Dyn Complex Filter (OR_MIX))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- 4. Fonctions Scalaires ---

Testing: dyn_func_01 (Dyn Scalar Func (STRING))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_func_02 (Dyn Scalar Func (STRING))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_func_03 (Dyn Scalar Func (MATH))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_func_04 (Dyn Scalar Func (MATH))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_func_05 (Dyn Scalar Func (MATH))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- 5. Sous-requêtes ---

Testing: dyn_sub_01 (Dyn Subquery (Compare to AVG))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_sub_02 (Dyn Subquery (Compare to AVG))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_sub_03 (Dyn Subquery (Compare to AVG))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- 6. DML Lifecycle (Safe) ---

Testing: dyn_dml (DML Lifecycle)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_dml (DML Lifecycle)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_dml (DML Lifecycle)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: dyn_dml (DML Lifecycle)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- 4. Data Manipulation (CRUD) ---

Testing: md_4.0_cleanup (Pre-CRUD Cleanup)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_4.1 (INSERT Operation)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_4.2 (SELECT Verification)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_4.3 (UPDATE Operation)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_4.3_verify (Verify UPDATE)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_4.4 (DELETE Operation)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- 5. Index Management ---

Testing: md_5.1 (CREATE INDEX VARCHAR)
  [OpenHalo] ✗ Error: 322 (HY000): current transaction is aborted, commands ignored until end of transaction block...

Testing: md_5.2 (CREATE INDEX INT)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_5.3 (SHOW INDEX)
  [OpenHalo] ✗ MissingFeature: 1264 (HY000): Table 'testdb.name_basics' doesn't exist...

--- 6. Join Operations ---

Testing: md_6.1 (Multi-Table INNER JOIN)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_6.2 (LEFT JOIN with Aggregation)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_6.3 (JOIN Multiple Conditions)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_6.4 (SELF JOIN)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "films" does not exist...

Testing: md_6.5 (JOIN with HAVING and DISTINCT)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_6.6 (Subquery with JOIN)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "films" does not exist...

--- 7. Views and Transactions ---

Testing: md_7.1 (CREATE VIEW)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_7.2 (Query VIEW)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "actor_summary" does not exist...

Testing: md_7.3 (DROP VIEW)
  [OpenHalo] ✗ Error: 1146 (HY000): view "actor_summary" does not exist...

Testing: md_7.4_a (Transaction START)
  [OpenHalo] Mean: 0.16ms, Rows: 0, Status: OK

Testing: md_7.4_b (Transaction INSERT)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_7.4_c (Transaction COMMIT)
  [OpenHalo] Mean: 0.17ms, Rows: 0, Status: OK

Testing: md_7.4_d (Verify Commit)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_7.5_a (Rollback START)
  [OpenHalo] Mean: 0.25ms, Rows: 0, Status: OK

Testing: md_7.5_b (Rollback DELETE)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_7.5_c (Rollback EXEC)
  [OpenHalo] Mean: 0.27ms, Rows: 0, Status: OK

Testing: md_7.5_d (Verify Rollback (Row should exist))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_7_cleanup (Cleanup Trans)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- 8. String Functions ---

Testing: md_8.1 (CONCAT)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_8.2 (SUBSTRING)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_8.3 (UPPER/LOWER)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_8.4 (LENGTH)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_8.5 (REPLACE)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_8.6 (TRIM)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- 9. Advanced SQL ---

Testing: md_9.1 (UNION (Expected Fail on OH))
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_9.2 (CASE WHEN)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: prob_9_use (USE DB)
  [OpenHalo] Mean: 0.14ms, Rows: 0, Status: OK

Testing: prob_9_status (SHOW TABLE STATUS)
  [OpenHalo] Mean: 0.82ms, Rows: 1, Status: OK

--- 10. Database Constraints ---

Testing: md_10.1 (Add UNIQUE Constraint)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "films" does not exist...

Testing: md_10.1_fail (Test UNIQUE Violation)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "films" does not exist...

Testing: md_10.2_pre (Cleanup Orphan Records)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "film_actor" does not exist...

Testing: md_10.2 (Add FK Constraint)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "film_actor" does not exist...

Testing: md_10.3 (Add CHECK Constraint)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "films" does not exist...

Testing: md_10.4_a (Drop UNIQUE)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "films" does not exist...

Testing: md_10.4_b (Drop CHECK)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "films" does not exist...

Testing: md_10.4_c (Drop FK)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "film_actor" does not exist...

--- 11. Advanced Subqueries ---

Testing: md_11.1 (Derived Table)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_11.2 (Correlated Subquery)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: md_11.3 (EXISTS Operator)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- 12. Data Export ---

Testing: md_12.1 (INTO OUTFILE (Expected Fail on OH))
  [OpenHalo] ✗ SyntaxError: 1478 (HY000): syntax error at or near "INTO"...

--- 12.2 Shell Export (System Command) ---
  [System] Shell export command defined but skipped in Python connector test.

--- 13. Advanced Features ---

Testing: md_13.1 (Fuzzy Search LIKE)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

--- PROBLEMATIC / MISSING FEATURES (From Report) ---

Testing: prob_1 (JSON_EXTRACT)
  [OpenHalo] ✗ MissingFeature: 32900 (HY000): function json_extract(unknown, unknown) does not exist...

Testing: prob_2_setup (Setup Temp for Delete)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: prob_2 (Multi-table DELETE JOIN)
  [OpenHalo] ✗ SyntaxError: 1478 (HY000): syntax error at or near "JOIN"...

Testing: prob_2_cleanup (Cleanup Temp)
  [OpenHalo] Mean: 0.12ms, Rows: 0, Status: OK

Testing: prob_3 (FORCE INDEX)
  [OpenHalo] ✗ SyntaxError: 1478 (HY000): syntax error at or near "PRIMARY"...

Testing: prob_4 (CREATE TABLE PARTITION)
  [OpenHalo] ✗ SyntaxError: 1478 (HY000): syntax error at or near "("...

Testing: prob_4_cleanup (Drop Partition Table)
  [OpenHalo] Mean: 0.07ms, Rows: 0, Status: OK

Testing: prob_5_create (CREATE PROCEDURE)
  [OpenHalo] ✗ SyntaxError: 1478 (HY000): syntax error at or near "SELECT"...

Testing: prob_5_call (CALL PROCEDURE)
  [OpenHalo] ✗ Error: 1292 (HY000): procedure testdb.get_actors does not exist...

Testing: prob_5_drop (DROP PROCEDURE)
  [OpenHalo] Mean: 0.08ms, Rows: 0, Status: OK

Testing: prob_6_idx (CREATE FULLTEXT INDEX)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: prob_6_match (MATCH AGAINST)
  [OpenHalo] ✗ SyntaxError: 1478 (HY000): syntax error at or near "AGAINST"...

Testing: prob_7_idx (CREATE SPATIAL INDEX)
  [OpenHalo] ✗ Error: 1146 (HY000): relation "name_basics" does not exist...

Testing: prob_7_func (Spatial Function)
  [OpenHalo] ✗ Error: 32900 (HY000): function st_distance(point, point) does not exist...

Testing: prob_8 (HANDLER OPEN)
  [OpenHalo] ✗ SyntaxError: 1478 (HY000): syntax error at or near "HANDLER"...

Testing: prob_9 (SHOW TABLE STATUS)
  [OpenHalo] Mean: 0.80ms, Rows: 1, Status: OK

Testing: prob_10 (GET DIAGNOSTICS)
  [OpenHalo] ✗ SyntaxError: 1478 (HY000): syntax error at or near "GET"...

============================================================
PERFORMANCE BENCHMARKS (Stress & Bulk)
============================================================

📦 BULK INSERT TEST: OpenHalo (5000 rows)
  ➜ Time: 18.11 ms
  ➜ Rate: 276120 rows/sec

📦 BULK INSERT TEST: MySQL (5000 rows)
  ➜ Failed: 2003 (HY000): Can't connect to MySQL server on 'localhost:3306' (111)

--- Generating Performance Benchmarks (TPS & Latency) ---

🔥 STRESS TEST: OpenHalo (10 threads, 5s)
  ➜ TPS (Transac/Sec): 0.00
  ➜ Latence Moyenne  : 0.00 ms
  ➜ Latence P95      : 0.00 ms
  ➜ Erreurs          : 145376

🔥 STRESS TEST: MySQL (10 threads, 5s)
  ➜ TPS (Transac/Sec): 0.00
  ➜ Latence Moyenne  : 0.00 ms
  ➜ Latence P95      : 0.00 ms
  ➜ Erreurs          : 10

📊 Graphique complet généré : benchmark_full_report.png

--- Generating Complex Queries Comparison Graph ---
⚠ Pas assez de données pour le graphe complexe.
📊 Graphique Scatter Plot généré : benchmark_scatter_comparison.png

============================================================
FULL COMPATIBILITY REPORT GENERATION
============================================================

✓ Report saved to openhalo_full_compatibility_report.json

============================================================
SYNTHESIS REPORT – USEFUL METRICS
============================================================

📌 OpenHalo execution summary
  Total queries tested : 106
  ✅ OK                : 10
  ⚠ Problems           : 0
  ❌ Errors             : 96

🐢 TOP 10 REQUÊTES LES PLUS LENTES SUR OPENHALO (vs MySQL)
  ID           |   OpenHalo (ms) |      MySQL (ms) |   Différence
-----------------------------------------------------------------
  prob_9_status |            0.82 |            0.00 | N/A
  prob_9       |            0.80 |            0.00 | N/A
  md_7.5_c     |            0.27 |            0.00 | N/A
  md_7.5_a     |            0.25 |            0.00 | N/A
  md_7.4_c     |            0.17 |            0.00 | N/A
  md_7.4_a     |            0.16 |            0.00 | N/A
  prob_9_use   |            0.14 |            0.00 | N/A
  prob_2_cleanup |            0.12 |            0.00 | N/A
  prob_5_drop  |            0.08 |            0.00 | N/A
  prob_4_cleanup |            0.07 |            0.00 | N/A

🚀 TOP REQUÊTES OÙ OPENHALO BAT MYSQL (Hall of Fame)
  ID           |   OpenHalo (ms) |      MySQL (ms) |         Gain
-----------------------------------------------------------------
  Aucune victoire significative détectée sur ce dataset.

⚡ Queries faster on MySQL than OpenHalo

🚫 Unsupported / failing features on OpenHalo
  md_5.3          SHOW INDEX → MissingFeature
  md_12.1         INTO OUTFILE (Expected Fail on OH) → SyntaxError
  prob_1          JSON_EXTRACT → MissingFeature
  prob_2          Multi-table DELETE JOIN → SyntaxError
  prob_3          FORCE INDEX → SyntaxError
  prob_4          CREATE TABLE PARTITION → SyntaxError
  prob_5_create   CREATE PROCEDURE → SyntaxError
  prob_6_match    MATCH AGAINST → SyntaxError
  prob_8          HANDLER OPEN → SyntaxError
  prob_10         GET DIAGNOSTICS → SyntaxError

📊 Average execution time
  OpenHalo : 0.29 ms

✅ End of synthesis report

📂 PERFORMANCE PAR CATÉGORIE
  Catégorie                 | OpenHalo Avg |    MySQL Avg
-------------------------------------------------------
  Simple SELECT             |          N/A |          N/A
  Aggregations              |          N/A |          N/A
  Joins                     |          N/A |          N/A
  Subqueries                |          N/A |          N/A
  DML (Write)               |          N/A |          N/A
  String/Math               |          N/A |          N/A

Closed OpenHalo connection.

✓ Full Markdown Compatibility Suite Complete!
```
