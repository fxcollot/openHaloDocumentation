# Query Validation Workflow

This section describes how to validate SQL queries when using MySQL through OpenHalo (PostgreSQL as backend). The goal is to ensure that queries are correctly parsed, translated, executed, and optimized.

---

## Step 1: Validate Syntax (Parsing Phase)

Ensure that each query is correctly understood by OpenHalo’s SQL parser and matches the grammar supported by the engine.

### What to check
- The query executes without syntax errors in OpenHalo/PostgreSQL.
- MySQL keywords, functions, and data types are correctly recognized or translated.
- Joins, subqueries, aliases, and aggregations behave as expected.

### Why this matters
MySQL and PostgreSQL have key syntax and behavior differences:

- `LIMIT offset, count` (MySQL) → `LIMIT count OFFSET offset` (PostgreSQL)
- `IFNULL()` (MySQL) → `COALESCE()` (PostgreSQL)
- Type differences: `TINYINT(1)` vs `BOOLEAN`, `DATETIME` vs `TIMESTAMP`

### How to evaluate
- Execute the query and record syntax errors or incompatibilities.
- Check whether OpenHalo automatically rewrites or adapts differences.

---

## Step 2: Validate the Execution Plan (Performance Evaluation)

Ensure that the translated query uses an efficient PostgreSQL execution plan.

### What to check
- PostgreSQL (via OpenHalo) selects an optimal execution plan.
- Indexes are used when available.
- Estimated cost and row counts are reasonable.
- No unnecessary sequential scans on large tables.

### Why this matters
Two queries can return the same result, but one may be significantly slower depending on the execution plan chosen.

### How to evaluate
Use PostgreSQL’s plan analysis:

```sql
EXPLAIN (ANALYZE, BUFFERS) <your_query>;
```

### Inspect Execution Plan Details

Inspect:
- Scan types (Index Scan, Seq Scan, Nested Loop…)
- Estimated vs. actual row counts
- Total execution time
- Cache usage (buffers)

Reference: [PostgreSQL EXPLAIN Documentation](https://docs.postgresql.fr/14/using-explain.html)

---

## Step 3: Validate Query Results (Correctness & Consistency)

Ensure that results are logically identical between MySQL and OpenHalo.

### What to check
- The same number of rows is returned.
- Column values match exactly.
- Row order is identical (when relevant).
- Data types remain consistent (numbers, dates, strings, booleans…).

### Why this matters
A proper migration must not change the logical output of a query.

### How to evaluate
- Compare MySQL and OpenHalo results manually or with tools.
- Pay attention to aggregations (`SUM`, `AVG`, `COUNT`) that may differ due to type coercion or NULL behavior.
- Test edge cases (NULL values, empty strings, rounding, divisions…).

---

## Step 4: Validate Execution Time (Benchmarking)

Measure the performance of the same query in MySQL and OpenHalo.

### How to measure
- Wrap the execution in a timer.
- Run queries multiple times and compute an average to reduce cache bias.
- Start with simple queries, then increase complexity:
  - With/without indexes
  - Different table sizes
  - Joins, subqueries, aggregates

Reference: [Navicat - Measuring Query Execution Time](https://www.navicat.fr/company/aboutus/blog/2724-mesurer-le-temps-d-exécution-des-requêtes-dans-les-bases-de-données-relationnelles.html#:~:text=Utiliser%20SQL%20Profiler%3A,temps%20d'exécution%20en%20secondes)
