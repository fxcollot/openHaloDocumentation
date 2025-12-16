# OpenHalo Validation Protocol & Performance Strategy

## 1. Context and Objectives
This protocol defines the validation strategy for the assessment of **OpenHalo** (PostgreSQL-based engine) as a target for MySQL workloads. The goal is to verify that:
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

## 3. Query Scope (Categories)
The automated suite covers the following functional areas:

* **Data Retrieval (DQL):** Basic `SELECT`, filtering, Aggregations (`GROUP BY`, `AVG`), Joins (`INNER`, `LEFT`, `SELF`), and Subqueries.
* **Data Manipulation (DML):** CRUD Cycle (`INSERT` -> `UPDATE` -> `DELETE`) and Transaction integrity (`COMMIT`, `ROLLBACK`).
* **Advanced Features:** Constraints (`FOREIGN KEY`, `UNIQUE`), String/Math functions, and edge cases like `JSON` support or `UNION` syntax.

For further details, please see the section [`TestingReport/OpenHaloMySQLCompatibilityTestingReport.md`](./TestingReport/OpenHaloMySQLCompatibilityTestingReport.md).

---

## 4. Validation Workflow (The Pipeline)

The validation is performed using our custom Python pipeline which runs A/B testing against the native MySQL instance.

### Step 1: Automated Syntax Validation (Parsing Phase)
The first layer validation ensures that queries are correctly parsed by the OpenHalo engine.
- **PASSED:** The query returns a result set or success message.
- **SYNTAX ERROR:** OpenHalo failed to parse the query (e.g., MySQL specific syntax not supported).
- **MISSING FEATURE:** The function or operator does not exist in the OpenHalo backend.
- **PERMS DENIED:** Security restrictions (e.g., `INTO OUTFILE`), considered a "Success" if the error matches MySQL's behavior.

### Step 2: Result Consistency (Correctness)
We ensure that the migration does not result in data loss or corruption by comparing the outputs of both engines.
- **Execution Status:** Did both engines succeed?
- **Row Counts:** Did both engines return the same number of rows? (e.g., `17 rows` on both).

### Step 3: Performance Evaluation (Stress Test)
Unlike simple execution timing, our suite evaluates performance under distinct conditions:

1.  **Latency (P95):** Measures the 95th percentile response time to filter out outliers and ensure stability.
2.  **Throughput (TPS):** Simulates **concurrent users** (e.g., 10 threads) to validate OpenHalo's process-based architecture under load.
3.  **Bulk Operations:** Measures ingestion rates (rows/sec) using `executemany` to assess data migration speed.

---

## 5. Automated Synthesis & Metrics (Reporting)

Once the automated suite completes, the `generate_summary` function outputs a comprehensive **Synthesis Report** in the terminal for immediate analysis.

### 5.1. Global Execution Summary
A high-level view of migration readiness:
- **✅ OK:** Queries successfully executed with identical results.
- **⚠ Problems:** Execution succeeded, but data rows differ (logic divergence).
- **❌ Errors:** Syntax errors or features not yet implemented in OpenHalo.

### 5.2. Comparative Analysis (Regressions vs. Gains)
The script sorts queries into two lists to highlight performance deltas.

#### 🐢 The "Hall of Shame" (Slowest Queries)
Identifies bottlenecks where OpenHalo is significantly slower than MySQL.
- **Logic:** Compares execution time ratios.
- **Flags:**
    - 🔴 **> 1.5x Slower:** Critical regression (needs indexing or rewrite).
    - ⚪ **Similar:** Within acceptable margin.

*Debugging Strategy:* For queries flagged as 🔴, we can perform a manual `EXPLAIN (ANALYZE)` to check for sequential scans or unused indexes.

#### 🚀 The "Hall of Fame" (Performance Wins)
Identifies complex operations where OpenHalo (PostgreSQL) outperforms MySQL.
- **Logic:** OpenHalo is at least **10% faster** (Ratio < 0.9).
- **Ranking:** Sorted by absolute time gain (ms).
- **Goal:** Highlights benefits often seen in complex Joins or Analytic functions.

### 5.3. Category Breakdown
To pinpoint specific architectural weaknesses, the report aggregates performance by query type:

| Category | Description | Metric |
| :--- | :--- | :--- |
| **Simple SELECT** | Basic reads (`SELECT *`) | Average ms |
| **Aggregations** | `GROUP BY`, `COUNT`, `SUM` | Average ms |
| **Joins** | Complex multi-table joins | Average ms |
| **Subqueries** | Nested `SELECT` statements | Average ms |
| **DML (Write)** | `INSERT`, `UPDATE`, `DELETE` | Average ms |

### 5.4. Feature Gap Analysis
A specific section listing **🚫 Unsupported / Failing features**. Helping to generate a "To-Do List" for OpenHalo developers.

---

## 6. Artifacts & Deliverables

The execution of this protocol automatically generates the following files:

1.  **`openhalo_full_compatibility_report.json`**
    * Raw data containing every query execution time, status, and error message.
2.  **`benchmark_full_report.png`**
    * Visual comparison of TPS and P95 Latency under load.
3.  **`benchmark_complex_queries.png`**
    * Specific comparison of complex operations (Joins, Subqueries) where PostgreSQL engines usually differ from MySQL.
