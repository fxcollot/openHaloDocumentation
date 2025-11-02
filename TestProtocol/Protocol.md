# OpenHalo Performance Testing Protocol

## The goal

OpenHalo translates MySQL queries into PostgreSQL queries. We need to check two things:
1. Do the translated queries give the same results?
2. Are they still fast enough?

This document explains how to test this properly.

## Setting up the test environment

### The machines
Use the same computer for all your tests. Document what hardware you're using (RAM, CPU, storage type). Don't run other heavy programs while testing.

### The databases
You need both MySQL and PostgreSQL installed with identical data. 

Turn off query cache in MySQL by adding `query_cache_type = 0` in my.cnf. This ensures we measure real performance, not cached results.

Before testing, refresh database statistics:
```sql
-- On MySQL
ANALYZE TABLE users;
ANALYZE TABLE orders;

-- On PostgreSQL  
ANALYZE users;
ANALYZE orders;
```

## Test query catalog

### 1. Simple SELECT queries

**Single row by primary key:**
```sql
SELECT * FROM users WHERE id = 42;
```

**Single row by indexed column:**
```sql
SELECT * FROM users WHERE email = 'test@example.com';
```

**Single row by non-indexed column:**
```sql
SELECT * FROM users WHERE phone = '+33123456789';
```

**Multiple rows with LIMIT:**
```sql
SELECT * FROM orders WHERE status = 'pending' LIMIT 100;
```

**SELECT with specific columns:**
```sql
SELECT id, name, email FROM users WHERE created_at > '2024-01-01';
```

### 2. JOIN queries

**INNER JOIN (two tables):**
```sql
SELECT users.name, orders.total
FROM users
INNER JOIN orders ON users.id = orders.user_id
WHERE orders.created_at > '2024-01-01';
```

**LEFT JOIN:**
```sql
SELECT users.name, orders.total
FROM users
LEFT JOIN orders ON users.id = orders.user_id
WHERE users.created_at > '2024-01-01';
```

**RIGHT JOIN:**
```sql
SELECT users.name, orders.total
FROM orders
RIGHT JOIN users ON users.id = orders.user_id;
```

**Multiple JOINs (three or more tables):**
```sql
SELECT u.name, o.id, p.name, oi.quantity
FROM users u
JOIN orders o ON u.id = o.user_id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
WHERE o.created_at > '2024-01-01';
```

**Self JOIN:**
```sql
SELECT e1.name as employee, e2.name as manager
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.id;
```

### 3. Aggregate queries

**Simple COUNT:**
```sql
SELECT COUNT(*) FROM users;
```

**COUNT with condition:**
```sql
SELECT COUNT(*) FROM orders WHERE status = 'completed';
```

**GROUP BY with aggregates:**
```sql
SELECT category, COUNT(*), AVG(price), SUM(stock)
FROM products
GROUP BY category;
```

**GROUP BY with HAVING:**
```sql
SELECT user_id, COUNT(*) as order_count
FROM orders
GROUP BY user_id
HAVING COUNT(*) > 5;
```

**Multiple GROUP BY columns:**
```sql
SELECT category, status, COUNT(*), AVG(price)
FROM products
GROUP BY category, status;
```

**Aggregate with JOIN:**
```sql
SELECT u.name, COUNT(o.id) as order_count, SUM(o.total) as total_spent
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
GROUP BY u.id, u.name;
```

### 4. Subqueries

**Subquery in WHERE:**
```sql
SELECT * FROM products
WHERE category_id IN (
    SELECT id FROM categories WHERE active = 1
);
```

**Correlated subquery:**
```sql
SELECT u.name, (
    SELECT COUNT(*) FROM orders o WHERE o.user_id = u.id
) as order_count
FROM users u;
```

**Subquery in FROM:**
```sql
SELECT avg_price.category, avg_price.avg
FROM (
    SELECT category, AVG(price) as avg
    FROM products
    GROUP BY category
) as avg_price
WHERE avg_price.avg > 100;
```

**EXISTS subquery:**
```sql
SELECT * FROM users u
WHERE EXISTS (
    SELECT 1 FROM orders o WHERE o.user_id = u.id AND o.total > 1000
);
```

### 5. Common Table Expressions (CTEs)

**Simple CTE:**
```sql
WITH active_users AS (
    SELECT * FROM users WHERE active = 1
)
SELECT * FROM active_users WHERE created_at > '2024-01-01';
```

**Multiple CTEs:**
```sql
WITH 
    recent_orders AS (
        SELECT * FROM orders WHERE created_at > '2024-01-01'
    ),
    user_stats AS (
        SELECT user_id, COUNT(*) as order_count
        FROM recent_orders
        GROUP BY user_id
    )
SELECT u.name, us.order_count
FROM users u
JOIN user_stats us ON u.id = us.user_id;
```

**Recursive CTE:**
```sql
WITH RECURSIVE category_tree AS (
    SELECT id, name, parent_id, 0 as level
    FROM categories
    WHERE parent_id IS NULL
    
    UNION ALL
    
    SELECT c.id, c.name, c.parent_id, ct.level + 1
    FROM categories c
    JOIN category_tree ct ON c.parent_id = ct.id
)
SELECT * FROM category_tree;
```

### 6. Window functions

**ROW_NUMBER:**
```sql
SELECT name, salary, department,
       ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) as rank
FROM employees;
```

**RANK and DENSE_RANK:**
```sql
SELECT name, score,
       RANK() OVER (ORDER BY score DESC) as rank,
       DENSE_RANK() OVER (ORDER BY score DESC) as dense_rank
FROM players;
```

**Aggregate window functions:**
```sql
SELECT name, salary, department,
       AVG(salary) OVER (PARTITION BY department) as dept_avg,
       SUM(salary) OVER (PARTITION BY department) as dept_total
FROM employees;
```

**LAG and LEAD:**
```sql
SELECT date, revenue,
       LAG(revenue, 1) OVER (ORDER BY date) as prev_revenue,
       LEAD(revenue, 1) OVER (ORDER BY date) as next_revenue
FROM daily_sales;
```

### 7. Set operations

**UNION:**
```sql
SELECT email FROM users WHERE country = 'FR'
UNION
SELECT email FROM subscribers WHERE active = 1;
```

**UNION ALL:**
```sql
SELECT id, name FROM products WHERE category = 'electronics'
UNION ALL
SELECT id, name FROM products WHERE status = 'featured';
```

**INTERSECT:**
```sql
SELECT user_id FROM orders WHERE created_at > '2024-01-01'
INTERSECT
SELECT user_id FROM orders WHERE total > 100;
```

**EXCEPT (MySQL: use NOT IN or LEFT JOIN):**
```sql
SELECT id FROM users
EXCEPT
SELECT user_id FROM banned_users;
```

### 8. Complex WHERE clauses

**Multiple conditions with AND/OR:**
```sql
SELECT * FROM products
WHERE (category = 'electronics' OR category = 'computers')
  AND price > 100
  AND stock > 0;
```

**BETWEEN:**
```sql
SELECT * FROM orders
WHERE created_at BETWEEN '2024-01-01' AND '2024-12-31';
```

**LIKE patterns:**
```sql
SELECT * FROM users WHERE name LIKE 'John%';
SELECT * FROM products WHERE description LIKE '%phone%';
```

**IN with multiple values:**
```sql
SELECT * FROM orders WHERE status IN ('pending', 'processing', 'shipped');
```

**IS NULL / IS NOT NULL:**
```sql
SELECT * FROM users WHERE deleted_at IS NULL;
SELECT * FROM orders WHERE shipped_at IS NOT NULL;
```

**CASE expressions:**
```sql
SELECT name, price,
       CASE 
           WHEN price < 50 THEN 'cheap'
           WHEN price < 200 THEN 'medium'
           ELSE 'expensive'
       END as price_category
FROM products;
```

### 9. ORDER BY and sorting

**Simple ORDER BY:**
```sql
SELECT * FROM products ORDER BY price DESC;
```

**Multiple columns:**
```sql
SELECT * FROM products ORDER BY category ASC, price DESC;
```

**ORDER BY with expression:**
```sql
SELECT * FROM users ORDER BY YEAR(created_at) DESC, name ASC;
```

**ORDER BY with NULL handling:**
```sql
SELECT * FROM products ORDER BY stock IS NULL, stock DESC;
```

### 10. DISTINCT queries

**DISTINCT on single column:**
```sql
SELECT DISTINCT category FROM products;
```

**DISTINCT on multiple columns:**
```sql
SELECT DISTINCT user_id, product_id FROM purchases;
```

**COUNT DISTINCT:**
```sql
SELECT COUNT(DISTINCT user_id) FROM orders;
```

### 11. Write operations

**Simple INSERT:**
```sql
INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com');
```

**INSERT multiple rows:**
```sql
INSERT INTO products (name, price, stock)
VALUES 
    ('Product A', 29.99, 100),
    ('Product B', 49.99, 50),
    ('Product C', 19.99, 200);
```

**INSERT SELECT:**
```sql
INSERT INTO archived_orders
SELECT * FROM orders WHERE created_at < '2023-01-01';
```

**UPDATE simple:**
```sql
UPDATE users SET last_login = NOW() WHERE id = 42;
```

**UPDATE with JOIN:**
```sql
UPDATE products p
JOIN categories c ON p.category_id = c.id
SET p.discount = 10
WHERE c.name = 'Electronics';
```

**UPDATE with subquery:**
```sql
UPDATE users
SET status = 'vip'
WHERE id IN (
    SELECT user_id FROM orders
    GROUP BY user_id
    HAVING SUM(total) > 10000
);
```

**DELETE simple:**
```sql
DELETE FROM sessions WHERE expires_at < NOW();
```

**DELETE with JOIN:**
```sql
DELETE o FROM orders o
JOIN users u ON o.user_id = u.id
WHERE u.deleted_at IS NOT NULL;
```

### 12. Date and time functions

**Date comparisons:**
```sql
SELECT * FROM orders WHERE DATE(created_at) = '2024-01-15';
```

**Date range:**
```sql
SELECT * FROM orders 
WHERE created_at >= DATE_SUB(NOW(), INTERVAL 7 DAY);
```

**Date extraction:**
```sql
SELECT 
    YEAR(created_at) as year,
    MONTH(created_at) as month,
    COUNT(*) as order_count
FROM orders
GROUP BY YEAR(created_at), MONTH(created_at);
```

**Date formatting:**
```sql
SELECT DATE_FORMAT(created_at, '%Y-%m-%d') as date, COUNT(*)
FROM orders
GROUP BY DATE_FORMAT(created_at, '%Y-%m-%d');
```

### 13. String functions

**CONCAT:**
```sql
SELECT CONCAT(first_name, ' ', last_name) as full_name FROM users;
```

**SUBSTRING:**
```sql
SELECT SUBSTRING(email, 1, LOCATE('@', email) - 1) as username FROM users;
```

**UPPER/LOWER:**
```sql
SELECT UPPER(name) as name_upper, LOWER(email) as email_lower FROM users;
```

**String comparison:**
```sql
SELECT * FROM products WHERE LOWER(name) LIKE LOWER('%phone%');
```

### 14. Mathematical operations

**Basic arithmetic:**
```sql
SELECT price, price * 1.2 as price_with_tax FROM products;
```

**ROUND, FLOOR, CEIL:**
```sql
SELECT 
    price,
    ROUND(price, 2) as rounded,
    FLOOR(price) as floored,
    CEIL(price) as ceiled
FROM products;
```

**Aggregate math:**
```sql
SELECT 
    AVG(price) as avg_price,
    MIN(price) as min_price,
    MAX(price) as max_price,
    STD(price) as std_price
FROM products;
```

### 15. Transaction queries

Test these separately as they affect data:

**BEGIN/COMMIT:**
```sql
BEGIN;
UPDATE accounts SET balance = balance - 100 WHERE id = 1;
UPDATE accounts SET balance = balance + 100 WHERE id = 2;
COMMIT;
```

**ROLLBACK:**
```sql
BEGIN;
DELETE FROM orders WHERE id = 123;
ROLLBACK;
```

## Running the tests

### Warm-up phase
Run each query 3 times without recording results. This warms up database caches.

### Measurement phase
Run each query 10 times and record:
- Execution time (in milliseconds)
- Number of rows returned
- Result set (to compare)

For each query:
1. Execute on MySQL, record time and results
2. Translate with OpenHalo
3. Execute on PostgreSQL, record time and results
4. Compare result sets (must match exactly)

---

## Syntax Validation

Before measuring performance, OpenHalo translations must be validated to ensure they produce **syntactically correct PostgreSQL queries**.  
This step prevents invalid queries from skewing performance metrics and helps identify translation issues.

### Purpose

To verify that:
1. Each translated query is **syntactically valid** in PostgreSQL.  
2. The translation preserves the **logical structure** of the original MySQL query.  
3. All syntax or translation errors are **logged and categorized** for debugging.

### Procedure

For every query in the catalog:

1. Execute on MySQL and record the baseline result.  
2. Translate the query with OpenHalo.  
3. **Validate the PostgreSQL syntax** of the translated query using `EXPLAIN`:
   ```bash
   psql --no-psqlrc --set=ON_ERROR_STOP=1 -c "EXPLAIN <translated_query>;"
   ```
   - If PostgreSQL returns a `syntax error` or `function does not exist`, mark this query as **Syntax Error**.
   - Skip performance measurement for queries that fail validation.

4. If syntax is valid, proceed with the normal performance test steps (execution, timing, result comparison).

### Syntax error classification

Each syntax failure should be categorized with a short error code:

| Code | Type | Example |
|------|------|----------|
| S01 | Function mismatch | `DATE_FORMAT()` → not translated to `TO_CHAR()` |
| S02 | Operator difference | `!=` vs `<>`, or `||` vs `CONCAT()` |
| S03 | Keyword difference | MySQL-only syntax such as `LIMIT x,y`, `AUTO_INCREMENT` |
| S04 | Identifier quoting | Backticks `` `column` `` vs `"column"` |
| S05 | Unsupported feature | `ON DUPLICATE KEY UPDATE`, `REPLACE INTO`, etc. |

### Syntax validation report

Add a section in the final report:

```
=== OpenHalo Syntax Validation Report ===
Total queries: 150
Syntax OK: 147 (98%)
Syntax Errors: 3 (2%)

Error breakdown:
  S01 Function mismatch: 2
  S04 Identifier quoting: 1

Example:
Query: user_signup_stats
MySQL: SELECT DATE_FORMAT(created_at, '%Y-%m-%d'), COUNT(*) FROM users GROUP BY 1;
PGSQL: SELECT DATEFORMAT(created_at, 'YYYY-MM-DD'), COUNT(*) FROM users GROUP BY 1;
Error: function dateformat(timestamp without time zone, unknown) does not exist
```

### Success criteria 

A test run passes the syntax phase when:
- ≥ 98% of translated queries are **syntactically valid** in PostgreSQL  
- All syntax errors are **classified**

Queries that fail validation are excluded from the performance and result comparison phase but must appear in the final report.

---

## Calculating performance metrics

After 10 runs, calculate:
- **Mean**: Sum all times and divide by 10
- **Median**: Sort times and take the middle value
- **p95**: Sort times and take the value at position 9.5 (95th percentile)
- **p99**: Sort times and take the value at position 9.9 (99th percentile)
- **Standard deviation**: Measure of variation

## Performance classification

Calculate ratio: `PostgreSQL time / MySQL time`

**Categories:**
- **OK**: ratio ≤ 1.2 (up to 20% slower)
- **Warning**: 1.2 < ratio ≤ 2.0 (20-100% slower)
- **Problem**: ratio > 2.0 (more than 2× slower)
- **Better**: ratio < 1.0 (PostgreSQL faster)

## Investigating slow queries

When a query has ratio > 2.0, check the execution plan:

**MySQL:**
```sql
EXPLAIN SELECT * FROM users WHERE email = 'test@example.com';
```

**PostgreSQL:**
```sql
EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'test@example.com';
```

Common issues:
- Missing indexes in PostgreSQL
- Sequential scans instead of index scans
- Different join strategies
- Incorrect row estimates

## Report format

```
=== OpenHalo Performance Test Report ===
Date: 2025-11-02
Environment: PostgreSQL 15.2, MySQL 8.0.32

Total queries: 150
Results matched: 150 ✓

Performance breakdown:
  OK: 135 (90%)
  Warning: 12 (8%)
  Problem: 3 (2%)
  
Problem queries:

1. Query: get_user_orders
   MySQL:     mean=45ms, median=44ms, p95=48ms
   PostgreSQL: mean=103ms, median=101ms, p95=110ms
   Ratio: 2.3 (Problem)
   Issue: Missing index on orders.user_id
   
2. Query: monthly_sales_aggregate
   MySQL:     mean=200ms, median=195ms, p95=220ms
   PostgreSQL: mean=560ms, median=540ms, p95=600ms
   Ratio: 2.8 (Problem)
   Issue: Sequential scan on large table
```

## Success criteria

A test run passes when:
- All queries return identical results (100% match)
- At least 90% of queries are classified as OK or Better
- All Problem queries are documented with investigation notes
