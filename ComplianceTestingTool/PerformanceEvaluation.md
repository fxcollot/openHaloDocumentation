# Query Validation & Performance Workflow

This document outlines the automated methodology used to validate SQL queries during the OpenHalo migration project. The validation is performed using our custom Python pipeline (`openhalo_test_suite.py`) which runs A/B testing against a native MySQL instance to ensure protocol compatibility and performance stability.

---

## Step 1: Automated Syntax Validation (Parsing Phase)

The first layer of validation ensures that queries are correctly parsed by the OpenHalo engine (PostgreSQL with MySQL protocol).

### Automated Checks
The test suite executes a defined set of queries (Standard SQL, Joins, JSON, Spatial...) and automatically classifies the result:

- **PASSED:** The query returns a result set or success message.
- **SYNTAX ERROR:** OpenHalo failed to parse the query (e.g., MySQL specific syntax not supported).
- **MISSING FEATURE:** The function or operator does not exist in the OpenHalo backend.
- **PERMS DENIED:** Security restrictions (e.g., `INTO OUTFILE`), considered a "Success" if the error matches MySQL's behavior.

### Why this matters
It identifies "Showstoppers" immediately. For example, catching that `JSON_EXTRACT` is missing allows the team to plan for application code refactoring early in the process.

---

## Step 2: Performance Evaluation (Latency & Throughput)

Unlike simple execution timing, our suite evaluates performance under two distinct conditions using the integrated **StressTest module**.

### 1. Latency (Response Time)
- **Metric:** **P95 Latency** (95th Percentile).
- **Goal:** Ensure 95% of requests are served within an acceptable timeframe, filtering out outliers.
- **Comparison:** The script generates side-by-side graphs comparing OpenHalo vs. MySQL P95 values.

### 2. Throughput (TPS)
- **Metric:** **TPS** (Transactions Per Second).
- **Method:** The script simulates **concurrent users** (e.g., 10 threads) hammering the database simultaneously.
- **Goal:** Validate that OpenHalo's process-based architecture handles load as well as (or better than) MySQL.

### 3. Bulk Operations
- **Method:** `test_bulk_insert` function using `executemany`.
- **Metric:** Rows per second ingestion rate.
- **Goal:** Assess migration speed capabilities.

---

## Step 3: Result Consistency (Correctness)

We ensure that the migration does not result in data loss or corruption by comparing the outputs of both engines.

### Automated Checks
For every functional test query, the script compares:
- **Execution Status:** Did both engines succeed?
- **Row Counts:** Did both engines return the same number of rows? (e.g., `17,706 rows` on both).


---

## Step 4: Optimization (The "Hall of Shame")

Once the automated suite completes, we analyze the **"Top 10 Slowest Queries"** section generated in the terminal summary.

### Comparison Logic
The script calculates the ratio between OpenHalo and MySQL execution time for specific queries:
- 🔴 **> 1.5x Slower:** Needs optimization (Index missing? Query rewrite needed?).
- ⚪ **Similar:** Acceptable for migration.
- 🟢 **Faster:** Performance gain achieved (often observed on complex joins).

### Manual Debugging (EXPLAIN)
For queries flagged as 🔴 (Red), we perform a manual `EXPLAIN (ANALYZE)` to understand the PostgreSQL planner's decision:

```sql
-- Run manually on OpenHalo for flagged queries
EXPLAIN (ANALYZE, BUFFERS) SELECT ...;
```

We specifically check for sequential scans on large tables or unused indexes.

##Artifacts & Deliverables
The validation pipeline automatically generates the following artifacts for the client review:

1. `openhalo_full_compatibility_report.json`:

Raw data containing every query execution time, status, and error message.

2. `benchmark_full_report.png`:

Visual comparison of TPS and P95 Latency under load.

3. `benchmark_complex_queries.png`:

Specific comparison of complex operations (Joins, Subqueries) where PostgreSQL engines usually differ from MySQL.
