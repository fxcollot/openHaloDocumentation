# OpenHalo Test Protocol & Strategy

## 1. Context and Objectives
This protocol defines the validation strategy for the migration from **MySQL** to **OpenHalo** (PostgreSQL-based engine). The goal is to verify that:
- OpenHalo acts as a drop-in replacement for MySQL.
- Queries executed via the MySQL wire protocol on OpenHalo produce identical results to a native MySQL server.
- The system handles complex workloads (Concurrency/TPS) comparable to MySQL.

*Note: This protocol focuses on automated A/B testing (Source vs. Target).*

## 2. Test Environment
To ensure reliable testing, the environment includes:
- **Two database instances:**
  - **MySQL 5.7+**: The reference "Source of Truth".
  - **OpenHalo**: The target engine (PostgreSQL with MySQL translation layer).
- **Identical Datasets:**
  - The `imdb` dataset (approx. 100k rows) loaded on both systems.
  - Tables with relationships (PK/FK), Indexes, and diverse data types.
- **Automation Tools:**
  - A custom Python suite (`openhalo_test_suite.py`) utilizing `mysql-connector` to treat both engines as MySQL servers.
  - Visualization libraries (`matplotlib`) for performance reporting.

## 3. Query Categories (Test Scope)
The automated suite covers the following functional areas:

### 3.1. Data Retrieval (DQL)
- **Basic:** Simple `SELECT`, filtering (`WHERE`, `LIKE`), and sorting.
- **Aggregations:** `GROUP BY`, `COUNT`, `AVG`, `FLOOR`.
- **Joins:** `INNER JOIN`, `LEFT JOIN`, `SELF JOIN`, and multi-table joins.
- **Subqueries:** Correlated subqueries, `EXISTS`, and Derived Tables.

### 3.2. Data Manipulation (DML)
- **CRUD Cycle:** Validating `INSERT` -> `UPDATE` -> `SELECT` -> `DELETE` consistency.
- **Transactions:** Verification of ACID properties (`COMMIT`, `ROLLBACK`).
- **Bulk Operations:** High-speed ingestion testing.

### 3.3. Advanced Features
- **Constraints:** `UNIQUE`, `FOREIGN KEY`, `CHECK`.
- **Functions:** String manipulation (`CONCAT`, `SUBSTRING`), Math functions.
- **Compatibility Edge Cases:** `UNION` syntax, `INTO OUTFILE` security handling.

## 4. Validation Methodology
### 4.1. The A/B Testing Workflow
For each query in the catalog:
1.  **Execute on MySQL** and measure execution time & row count.
2.  **Execute on OpenHalo** and measure execution time & row count.
3.  **Compare Results:**
    - **Success:** Both engines return results (Status: OK).
    - **Failure:** OpenHalo returns an error while MySQL succeeds.
    - **Performance:** Comparison of execution timings.

### 4.2. Performance Benchmarking
Beyond functional correctness, the protocol mandates stress testing:
- **Throughput:** Measure Transactions Per Second (TPS) under concurrent load (10 threads).
- **Latency:** Measure P95 latency to ensure stability.
- **Optimization:** Identify the "Top 10 Slowest Queries" on OpenHalo vs. MySQL.

## 5. Deliverables
The execution of this protocol generates:
1.  **Automated JSON Report:** Full trace of every query status and error.
2.  **Performance Graphs:** Visual comparison of TPS and Latency (PNG).
3.  **Benchmark Analysis:** Specific comparison for complex queries (Joins/Subqueries).
