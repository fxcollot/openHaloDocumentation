# **Test Protocol**
## 1. Context and Objectives
This protocol aims to evaluate the functional compatibility between **MySQL**, **OpenHalo** (which translates MySQL queries into PostgreSQL), and **native PostgreSQL**. The goal is to verify that:
- MySQL queries, when executed via OpenHalo, produce identical or equivalent results to those obtained directly with PostgreSQL.
- OpenHalo correctly handles MySQL-specific features (functions, syntax, data types) and translates them into valid PostgreSQL queries.
- No data is corrupted or lost during translation or execution.
This protocol focuses on functional validation, not performance (which will be addressed in Part 3).

## 2. Test Environment
To ensure reliable testing, the environment must include:
- Three database instances:
  - **MySQL**: to execute the original queries.
  - **OpenHalo**: to translate and execute MySQL queries in PostgreSQL.
  - **Native PostgreSQL**: to compare the results obtained via OpenHalo with direct PostgreSQL execution.
- Identical datasets across the three database management systems, including:
  - Tables with relationships (primary/foreign keys, indexes, triggers).
  - Specific data types: `ENUM`, `SET`, `JSON`, `BLOB`, etc.
  - Realistic data (if provided by Clever Cloud) and synthetic data to cover edge cases.
- Automation tools:
  - Python scripts (using `mysql-connector`, `psycopg2`) to execute queries and compare results.
  - Docker to isolate environments and ensure reproducibility.

## 3. Query Categories to Test
Queries must cover **all possible types of SQL operations**. Here is a **generic** and **exhaustive** list:

### 3.1. Selection Queries (SELECT)
- Simple selection: `SELECT * FROM table WHERE condition;`
- Selection with joins: `SELECT a.col1, b.col2 FROM table1 a JOIN table2 b ON a.id = b.table1_id WHERE condition;`
  - Test: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN` (if supported).
- Selection with aggregates: `SELECT COUNT(*), AVG(column), SUM(column) FROM table GROUP BY column;`
- Selection with subqueries: `SELECT * FROM table1 WHERE column IN (SELECT column FROM table2 WHERE condition);`

### 3.2. Modification Queries (INSERT/UPDATE/DELETE)
- Simple insertion: `INSERT INTO table (col1, col2) VALUES (value1, value2);`
- Multiple insertion: `INSERT INTO table (col1, col2) VALUES (val1, val2), (val3, val4);`
- Update: `UPDATE table SET col1 = value1 WHERE condition;`
- Deletion: `DELETE FROM table WHERE condition;`

### 3.3. Complex Queries
- Transactions: `BEGIN; [queries] COMMIT;` or `ROLLBACK;`
- CTEs (Common Table Expressions): `WITH cte_name AS (SELECT ...) SELECT * FROM cte_name;`
- Window functions: `SELECT col1, ROW_NUMBER() OVER (PARTITION BY col2 ORDER BY col3) FROM table;`
- Set operations: `SELECT col FROM table1 UNION/INTERSECT/EXCEPT SELECT col FROM table2;`

### 3.4. Error Handling
- Invalid queries: `SELECT * FROM non_existent_table;`
- Constraint violations: `INSERT INTO table (col_not_null) VALUES (NULL);`

## 4. Validation Methodology
### 4.1. Query Execution
For each query in the catalog:
1. Execute on MySQL and record the result (dataset returned + metadata such as row count).
2. Translate with OpenHalo and execute on PostgreSQL.
3. Execute directly on PostgreSQL (if the query is natively compatible).
4. Compare the results between MySQL, OpenHalo, and native PostgreSQL.

### 4.2. Validation Criteria
- Results must be identical:
  - The dataset returned by OpenHalo must be strictly identical to that of native PostgreSQL.
  - MySQL results must be logically equivalent (accounting for syntax differences, e.g., `DATE_FORMAT` vs `TO_CHAR`).
- Error handling must be consistent:
  - Error messages must be clear and consistent across database management systems.
  - Constraint violations must be detected and reported in the same way.

### 4.3. Discrepancy Documentation
For each identified discrepancy, document:
- The query in question (exact text).
- The expected result (native PostgreSQL).
- The obtained result (OpenHalo).
- Analysis:
  - Probable cause (e.g., incorrect translation of a MySQL function).
  - Impact (e.g., missing data, calculation error).
  - Proposed solution (e.g., rewrite the query, adjust OpenHalo configuration).

## 5. Deliverables
At the end of testing, the following deliverables must be provided:
- A compatibility report:
  - Summary table of tested queries (success/failure).
  - List of discrepancies with analyses and solutions.
- An automation script (Python):
  - Executes queries on the three DBMS.
  - Compares results and generates a report.
- The datasets used (SQL/CSV files).
