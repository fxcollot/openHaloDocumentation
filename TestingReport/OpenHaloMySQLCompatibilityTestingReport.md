# OpenHalo MySQL Compatibility Testing Report

A comprehensive test suite validating MySQL protocol compatibility and standard SQL operations on OpenHalo - a PostgreSQL fork with MySQL wire protocol support.

---

## Table of Contents
- [Test Environment](#test-environment)
- [Test Dataset](#test-dataset)
- [Basic Queries](#basic-queries)
- [Filtering and Sorting](#filtering-and-sorting)
- [Aggregation and Statistics](#aggregation-and-statistics)
- [Data Manipulation (CRUD Operations)](#data-manipulation-crud-operations)
- [Index Management](#index-management)
- [Join Operations](#join-operations)
- [Database Views and Transactions](#database-views-and-transactions)
- [String Functions](#string-functions)
- [Advanced SQL Features](#advanced-sql-features)
- [Database Constraints](#database-constraints)
- [Advanced Subqueries](#advanced-subqueries)
- [Data Export](#data-export)
- [Advanced Features](#advanced-features)
- [Test Summary](#test-summary)
- [Problematic Queries](#problematic-queries)
- [Observations](#observations)


---

## Test Environment

**System Configuration:**
- **OpenHalo Version:** 1.0.14.18 (251127)
- **Operating System:** Ubuntu 24.04.3 LTS on WSL2
- **MySQL Client:** 8.0.x
- **Test Duration:** November 27 - December 3, 2025

**Connection Details:**
- **PostgreSQL Port:** 5432
- **MySQL Port:** 3306
- **Database:** imdb
- **Default User:** halo

---

## Test Dataset

**Table:** `name_basics`  
**Records:** 100,000 entries from IMDb dataset

**Schema:**
```

CREATE TABLE name_basics (
nconst VARCHAR(20) PRIMARY KEY,
primaryname VARCHAR(255),
birthyear INT,
deathyear INT,
primaryprofession VARCHAR(255),
knownfortitles VARCHAR(255)
);

```

**Data Source:** IMDb non-commercial datasets  
**Import Method:** TSV file conversion to MySQL INSERT statements  
**File Size:** 5.9 MB

---

## Basic Queries

### Test 1.1: Simple Field Query
**Query:**
```

SELECT * FROM name_basics WHERE primaryprofession = 'actor';

```

**Status:**  **PASSED**  
**Execution Time:** < 100ms  
**Results:** 17,706 rows returned  

**Notes:**
- Query executed successfully without errors
- Standard MySQL WHERE clause syntax fully supported
- Result set properly formatted

---

### Test 1.2: Multi-Criteria Search with Pattern Matching
**Query:**
```

SELECT * FROM name_basics
WHERE birthyear > 1970 AND primaryprofession LIKE '%actor%';

```

**Status:**  **PASSED**  
**Execution Time:** < 150ms  
**Results:** Multiple rows matching criteria

**Notes:**
- Compound WHERE conditions work correctly
- LIKE operator with wildcards functions as expected
- AND logical operator properly evaluated

---

## Filtering and Sorting

### Test 2.1: ORDER BY with Multiple Conditions
**Query:**
```

SELECT primaryname, birthyear, primaryprofession
FROM name_basics
WHERE deathyear IS NULL AND birthyear IS NOT NULL
ORDER BY birthyear ASC
LIMIT 10;

```

**Status:**  **PASSED**

**Sample Output:**
```

+------------------+-----------+-------------------+
| primaryname      | birthyear | primaryprofession |
+------------------+-----------+-------------------+
| Katia Lova       |      1914 | actress           |
| ...              |      ...  | ...               |
+------------------+-----------+-------------------+
10 rows in set (0.02 sec)

```

**Notes:**
- IS NULL and IS NOT NULL conditions work correctly
- ORDER BY ASC sorting functions properly
- LIMIT clause correctly restricts result set

---

## Aggregation and Statistics

### Test 3.1: GROUP BY with COUNT
**Query:**
```

SELECT primaryprofession, COUNT(*) AS total
FROM name_basics
GROUP BY primaryprofession
ORDER BY total DESC;
```

**Status:**  **PASSED**

**Sample Results:**
```

+-------------------+-------+
| primaryprofession | total |
+-------------------+-------+
| N                 | 19702 |
| actor             | 17706 |
| actress           | 11169 |
| miscellaneous     |  5805 |
| producer          |  3341 |
+-------------------+-------+

```

**Notes:**
- GROUP BY aggregation works correctly
- COUNT(*) function returns accurate results
- ORDER BY on aggregated column functions properly

---

### Test 3.2: AVG() Aggregation with Multiple Columns
**Query:**
```

SELECT primaryprofession,
AVG(birthyear) AS avg_birthyear,
COUNT(*) AS total
FROM name_basics
WHERE birthyear IS NOT NULL
GROUP BY primaryprofession
ORDER BY total DESC
LIMIT 10;
```

**Status:**  **PASSED**  
**Execution Time:** 0.33 sec

**Notes:**
- AVG() function calculates correctly
- Multiple aggregations in single query supported
- WHERE clause filters before aggregation as expected

---

### Test 3.3: MIN/MAX Functions
**Query:**
```

SELECT MAX(birthyear) AS most_recent,
MIN(birthyear) AS oldest
FROM name_basics
WHERE birthyear IS NOT NULL;

```

**Status:**  **PASSED**

**Notes:**
- MIN() and MAX() functions work correctly
- Multiple aggregate functions in single SELECT supported

---

### Test 3.4: Advanced Grouping with FLOOR()
**Query:**
```

SELECT FLOOR(birthyear/10)*10 AS decade,
COUNT(*) AS total
FROM name_basics
WHERE birthyear IS NOT NULL
GROUP BY decade
ORDER BY decade DESC;

```

**Status:**  **PASSED**

**Notes:**
- Mathematical functions (FLOOR) work in SELECT
- Computed columns can be used in GROUP BY
- Decade-based aggregation produces expected results

---

## Data Manipulation (CRUD Operations)

### Test 4.1: INSERT Operation
**Query:**
```

INSERT INTO name_basics
(nconst, primaryname, birthyear, deathyear, primaryprofession, knownfortitles)
VALUES
('nm9999999', 'Test Actor', 1990, NULL, 'actor', 'tt1234567');

```

**Status:**  **PASSED**  
**Result:** `Query OK, 1 row affected (0.01 sec)`

---

### Test 4.2: SELECT Verification After INSERT
**Query:**
```

SELECT * FROM name_basics WHERE nconst = 'nm9999999';

```

**Status:**  **PASSED**

**Output:**
```

+-----------+------------+-----------+-----------+-------------------+----------------+
| nconst    | primaryname| birthyear | deathyear | primaryprofession | knownfortitles |
+-----------+------------+-----------+-----------+-------------------+----------------+
| nm9999999 | Test Actor |      1990 |      NULL | actor             | tt1234567      |
+-----------+------------+-----------+-----------+-------------------+----------------+

```

---

### Test 4.3: UPDATE Operation
**Query:**
```

UPDATE name_basics
SET birthyear = 1985
WHERE nconst = 'nm9999999';

```

**Status:**  **PASSED**  
**Result:** `Query OK, 1 row affected (0.02 sec)`

**Verification:** birthyear correctly changed from 1990 to 1985

---

### Test 4.4: DELETE Operation
**Query:**
```

DELETE FROM name_basics WHERE nconst = 'nm9999999';

```

**Status:**  **PASSED**  
**Result:** `Query OK, 1 row affected (0.01 sec)`

**Verification:** Record successfully removed from table

---

## Index Management

### Test 5.1: CREATE INDEX on VARCHAR Column
**Query:**
```

CREATE INDEX idx_profession ON name_basics(primaryprofession);

```

**Status:**  **PASSED**  
**Result:** `Query OK, 0 rows affected (0.43 sec)`

---

### Test 5.2: CREATE INDEX on INT Column
**Query:**
```

CREATE INDEX idx_birthyear ON name_basics(birthyear);

```

**Status:**  **PASSED**  
**Result:** `Query OK, 0 rows affected (0.15 sec)`

---

### Test 5.3: SHOW INDEX Verification
**Query:**
```

SHOW INDEX FROM name_basics;

```

**Status:**  **PASSED**

**Notes:**
- Both indexes created successfully
- Index metadata correctly displayed
- Query performance improved after index creation

---

## Join Operations

### Test 6.1: Multi-Table Joins (INNER JOIN)
**Query:**
```

SELECT nb.primaryname, f.title, f.release_year
FROM name_basics nb
JOIN film_actor fa ON nb.nconst = fa.nconst
JOIN films f ON fa.film_id = f.film_id
LIMIT 10;

```


**Status:**  **PASSED**  
**Execution Time:** 0.08 sec  
**Results:** 4 rows returned

**Sample Output:**

+---------------------+----------------+--------------+
| primaryname | title | release_year |
+---------------------+----------------+--------------+
| Luis Javier Flores | Example Film 1 | 2008 |
| Giuliano Castaldo | Example Film 2 | 2015 |
| Giuliano Castaldo | Example Film 3 | 2013 |
| Curtis Tyler Haynes | Example Film 4 | 1996 |
+---------------------+----------------+--------------+


**Notes:**
- Multi-table INNER JOIN works correctly
- JOIN conditions properly evaluated
- Result set correctly formatted

---

### Test 6.2: LEFT JOIN with Aggregation
**Query:**
```
SELECT nb.primaryname, COUNT(fa.film_id) AS nb_films
FROM name_basics nb
LEFT JOIN film_actor fa ON nb.nconst = fa.nconst
WHERE nb.birthyear > 1980
GROUP BY nb.nconst, nb.primaryname
ORDER BY nb_films DESC
LIMIT 10;
```

**Status:**  **PASSED**  
**Execution Time:** 0.06 sec  
**Results:** 10 rows returned (all with 0 films as expected)

**Notes:**
- LEFT JOIN correctly includes rows with no matches
- COUNT works properly with LEFT JOIN (returns 0)
- GROUP BY and ORDER BY work with LEFT JOIN

---

### Test 6.3: JOIN with Multiple Conditions and Filtering
**Query:**

```
SELECT nb.primaryname, f.title, f.rating, fa.role
FROM name_basics nb
JOIN film_actor fa ON nb.nconst = fa.nconst
JOIN films f ON fa.film_id = f.film_id
WHERE f.rating > 7.0 AND nb.primaryprofession LIKE '%actor%'
ORDER BY f.rating DESC;
```

**Status:**  **PASSED**  
**Execution Time:** 0.05 sec  
**Results:** 3 rows returned

**Sample Output:**
```
+---------------------+----------------+--------+----------+
| primaryname | title | rating | role |
+---------------------+----------------+--------+----------+
| Giuliano Castaldo | Example Film 2 | 8.0 | Composer |
| Luis Javier Flores | Example Film 1 | 7.5 | Actor |
| Curtis Tyler Haynes | Example Film 4 | 7.2 | Actor |
+---------------------+----------------+--------+----------+
```


**Notes:**
- Multiple WHERE conditions work with JOINs
- LIKE pattern matching works in JOIN queries
- ORDER BY on joined table columns functions correctly

---

### Test 6.4: SELF JOIN
**Query:**
```
SELECT f1.title AS film1, f2.title AS film2, f1.genre
FROM films f1
JOIN films f2 ON f1.genre = f2.genre AND f1.film_id < f2.film_id;
```

**Status:**  **PASSED** (Empty result expected)  
**Execution Time:** 0.06 sec  
**Results:** Empty set (no films with same genre in test data)

**Notes:**
- SELF JOIN syntax supported
- Multiple JOIN conditions (ON ... AND ...) work correctly
- Returns empty set when no matches found (expected behavior)

---

### Test 6.5: JOIN with HAVING and DISTINCT
**Query:**
```

SELECT nb.primaryname, COUNT(DISTINCT f.genre) AS nb_genres
FROM name_basics nb
JOIN film_actor fa ON nb.nconst = fa.nconst
JOIN films f ON fa.film_id = f.film_id
GROUP BY nb.nconst, nb.primaryname
HAVING COUNT(DISTINCT f.genre) > 1;

```

**Status:**  **PASSED**  
**Execution Time:** 0.05 sec  
**Results:** 1 row returned

**Sample Output:**
```

+-------------------+-----------+
| primaryname       | nb_genres |
+-------------------+-----------+
| Giuliano Castaldo |         2 |
+-------------------+-----------+

```

**Notes:**
- COUNT(DISTINCT ...) works correctly
- HAVING clause filters aggregated results properly
- Complex aggregation queries with JOINs supported

---

### Test 6.6: Subquery with JOIN
**Query:**
```

SELECT f.title, f.rating
FROM films f
WHERE f.film_id IN (
SELECT fa.film_id
FROM film_actor fa
JOIN name_basics nb ON fa.nconst = nb.nconst
WHERE nb.birthyear < 1950
);

```

**Status:**  **PASSED** (Empty result expected)  
**Execution Time:** 0.01 sec  
**Results:** Empty set (no actors born before 1950 in test data)

**Notes:**
- Subqueries with JOINs supported
- IN operator works with subquery results
- Query executes efficiently


## Database Views and Transactions

### Test 7.1: CREATE VIEW
**Query:**
```

CREATE VIEW actor_summary AS
SELECT primaryname, birthyear, primaryprofession
FROM name_basics
WHERE primaryprofession = 'actor'
ORDER BY birthyear DESC;

```

**Status:**  **PASSED**  
**Result:** `Query OK, 0 rows affected (0.05 sec)`

**Notes:**
- View creation syntax supported
- Complex SELECT with WHERE, ORDER BY works in views
- View stored successfully in database

---

### Test 7.2: Query on VIEW
**Query:**
```

SELECT * FROM actor_summary LIMIT 10;

```

**Status:**  **PASSED**  
**Execution Time:** 0.17 sec

**Sample Output:**
```

+-------------------+-----------+-------------------+
| primaryname       | birthyear | primaryprofession |
+-------------------+-----------+-------------------+
| Brock Ross        |      2015 | actor             |
| Sasuke Nakano     |      2014 | actor             |
| Nathan Jean-Huard |      2011 | actor             |
| Pranay Singh      |      2010 | actor             |
| Bryce Sanders     |      2009 | actor             |
+-------------------+-----------+-------------------+

```

**Notes:**
- Views can be queried like regular tables
- ORDER BY in view definition applied correctly
- Performance acceptable for view queries

---

### Test 7.3: DROP VIEW
**Query:**
```

DROP VIEW actor_summary;

```

**Status:**  **PASSED**  
**Result:** `Query OK, 0 rows affected (0.04 sec)`

**Notes:**
- View deletion works correctly
- No errors when dropping existing view

---

### Test 7.4: Transaction COMMIT
**Query:**
```

START TRANSACTION;
INSERT INTO name_basics VALUES ('nm8888888', 'Transaction Test', 1995, NULL, 'actor', 'tt9999999');
COMMIT;
SELECT * FROM name_basics WHERE nconst = 'nm8888888';

```

**Status:**  **PASSED**  
**Results:** Data persisted after COMMIT

**Notes:**
- START TRANSACTION supported
- COMMIT successfully persists changes
- Data integrity maintained

---

### Test 7.5: Transaction ROLLBACK
**Query:**
```

START TRANSACTION;
DELETE FROM name_basics WHERE nconst = 'nm8888888';
ROLLBACK;
SELECT * FROM name_basics WHERE nconst = 'nm8888888';

```

**Status:**  **PASSED**  
**Results:** Data restored after ROLLBACK

**Sample Output:**
```

+-----------+------------------+-----------+-----------+-------------------+----------------+
| nconst    | primaryname      | birthyear | deathyear | primaryprofession | knownfortitles |
+-----------+------------------+-----------+-----------+-------------------+----------------+
| nm8888888 | Transaction Test |      1995 |      NULL | actor             | tt9999999      |
+-----------+------------------+-----------+-----------+-------------------+----------------+

```

**Notes:**
- ROLLBACK successfully reverts changes
- Transaction isolation working correctly
- ACID properties respected

---

## String Functions

### Test 8.1: CONCAT Function
**Query:**
```

SELECT CONCAT(primaryname, ' (', birthyear, ')') AS full_info
FROM name_basics
WHERE birthyear IS NOT NULL
LIMIT 10;

```

**Status:**  **PASSED**  
**Execution Time:** 0.00 sec

**Sample Output:**
```

+-----------------------------+
| full_info                   |
+-----------------------------+
| Katia Lova (1914)           |
| Kenneth Earl Medrano (1991) |
| Isa Hoes (1967)             |
| Brandie Park (1976)         |
| Miki Bosch (2001)           |
+-----------------------------+

```

**Notes:**
- CONCAT with multiple arguments works perfectly
- String and integer concatenation handled correctly
- NULL values handled appropriately

---

### Test 8.2: SUBSTRING Function
**Query:**
```

SELECT primaryname, SUBSTRING(primaryname, 1, 10) AS short_name
FROM name_basics LIMIT 10;

```

**Status:**  **PASSED**  
**Execution Time:** 0.00 sec

**Sample Output:**
```

+--------------------------+------------+
| primaryname              | short_name |
+--------------------------+------------+
| Luis Javier Flores       | Luis Javie |
| Giuliano Castaldo        | Giuliano C |
| Mohamed Cherif Abu Musab | Mohamed Ch |
+--------------------------+------------+

```

**Notes:**
- SUBSTRING extraction works correctly
- Position and length parameters respected
- Character truncation handled properly

---

### Test 8.3: UPPER and LOWER Functions
**Query:**
```

SELECT UPPER(primaryname) AS name_upper, LOWER(primaryprofession) AS prof_lower
FROM name_basics LIMIT 10;

```

**Status:**  **PASSED**  
**Execution Time:** 0.02 sec

**Sample Output:**
```

+--------------------------+------------------------------------+
| name_upper               | prof_lower                         |
+--------------------------+------------------------------------+
| LUIS JAVIER FLORES       | actor                              |
| GIULIANO CASTALDO        | composer,actor,director            |
| MOHAMED CHERIF ABU MUSAB | assistant_director                 |
+--------------------------+------------------------------------+

```

**Notes:**
- Case conversion functions work correctly
- Special characters and accents handled
- UTF-8 encoding preserved

---

### Test 8.4: LENGTH Function
**Query:**
```

SELECT primaryname, LENGTH(primaryname) AS name_length
FROM name_basics
ORDER BY name_length DESC
LIMIT 10;

```

**Status:**  **PASSED**  
**Execution Time:** 0.05 sec

**Sample Output:**
```

+----------------------------------------------------------+-------------+
| primaryname                                              | name_length |
+----------------------------------------------------------+-------------+
| The People's International Silver String Macedonian Band |          56 |
| The Annointed Voices of Higher Ground Young Adult Choir  |          55 |
| The Stephen Hawking May We Blink You Dance Orchestra     |          52 |
+----------------------------------------------------------+-------------+

```

**Notes:**
- LENGTH calculation accurate
- Works correctly with ORDER BY
- Handles long strings without issues

---

### Test 8.5: REPLACE Function
**Query:**
```

SELECT primaryname, REPLACE(primaryname, ' ', '_') AS name_with_underscores
FROM name_basics LIMIT 10;

```

**Status:**  **PASSED**  
**Execution Time:** 0.00 sec

**Sample Output:**
```

+--------------------------+--------------------------+
| primaryname              | name_with_underscores    |
+--------------------------+--------------------------+
| Luis Javier Flores       | Luis_Javier_Flores       |
| Giuliano Castaldo        | Giuliano_Castaldo        |
| Mohamed Cherif Abu Musab | Mohamed_Cherif_Abu_Musab |
+--------------------------+--------------------------+

```

**Notes:**
- String replacement works correctly
- Multiple occurrences replaced
- Original string unchanged

---

### Test 8.6: TRIM Function
**Query:**
```

SELECT primaryname, TRIM(primaryname) AS trimmed_name
FROM name_basics LIMIT 10;

```

**Status:**  **PASSED**  
**Execution Time:** 0.01 sec

**Notes:**
- TRIM function works correctly
- Leading and trailing spaces removed
- No visible changes in test data (no extra spaces present)




## Advanced SQL Features

### Test 9.1: UNION Operations
**Query:**

```

SELECT primaryname AS name, 'Actor' AS type
FROM name_basics
WHERE primaryprofession = 'actor'
LIMIT 5
UNION
SELECT primaryname AS name, 'Actress' AS type
FROM name_basics
WHERE primaryprofession = 'actress'
LIMIT 5;

```

**Status:**  **FAILED**  
**Error:** `ERROR 1478 (HY000): syntax error at or near "UNION"`

**Notes:**
- UNION operator not supported in OpenHalo
- Alternative: Use separate queries or combine with application logic
- Limitation for MySQL migrations requiring UNION

---

### Test 9.2: CASE WHEN Conditional Logic
**Query:**
```

SELECT
nb.primaryname,
CASE
WHEN nb.birthyear < 1950 THEN 'Vintage'
WHEN nb.birthyear BETWEEN 1950 AND 1980 THEN 'Classic'
ELSE 'Modern'
END AS era
FROM name_basics nb
LIMIT 10;

```

**Status:**  **PASSED**  
**Execution Time:** 0.05 sec

**Sample Output:**
```

+--------------------------+---------+
| primaryname              | era     |
+--------------------------+---------+
| Luis Javier Flores       | Modern  |
| Giuliano Castaldo        | Modern  |
| Mohamed Cherif Abu Musab | Modern  |
| Curtis Tyler Haynes      | Modern  |
| Jason Rosato             | Modern  |
| Kathryn Kimler           | Modern  |
| Corinne McCabe           | Modern  |
| Katia Lova               | Vintage |
| Matt Beggs               | Modern  |
| Veselina Todorova        | Modern  |
+--------------------------+---------+

```

**Notes:**
- CASE WHEN statements work correctly
- Multiple WHEN conditions supported
- BETWEEN operator works in CASE conditions
- ELSE clause properly evaluated


## Database Constraints

### Test 10.1: UNIQUE Constraint
**Query:**
```

-- Add UNIQUE constraint
ALTER TABLE films ADD CONSTRAINT unique_title UNIQUE (title);

-- Verify constraint
SHOW INDEX FROM films;

-- Test duplicate insertion (should fail)
INSERT INTO films VALUES ('tt9999999', 'Example Film 1', 2025, 5.0, 'Test');

```

**Status:**  **PASSED**  
**Result:** Constraint created and enforced successfully

**Sample Output:**
```

ERROR 1062 (HY000): duplicate key value violates unique constraint "_28980_unique_title"

```

**Notes:**
- UNIQUE constraints successfully created
- Duplicate key violations properly detected
- Constraint naming follows PostgreSQL conventions
- Index automatically created for UNIQUE constraint

---

### Test 10.2: FOREIGN KEY Constraint
**Query:**
```

-- Add FOREIGN KEY constraint
ALTER TABLE film_actor
ADD CONSTRAINT fk_actor
FOREIGN KEY (nconst) REFERENCES name_basics(nconst);

-- Verify constraint
SHOW CREATE TABLE film_actor;

```

**Status:**  **PASSED**  
**Result:** `Query OK, 0 rows affected (0.02 sec)`

**Sample Output:**
```

CONSTRAINT `fk_actor` FOREIGN KEY (`nconst`)
REFERENCES `name_basics` (`nconst`)
ON DELETE NO ACTION ON UPDATE NO ACTION

```

**Notes:**
- FOREIGN KEY constraints fully supported
- Referential integrity enforced
- ON DELETE and ON UPDATE actions configurable
- Constraint properly displayed in table definition

---

### Test 10.3: CHECK Constraint
**Query:**
```

-- Add CHECK constraint
ALTER TABLE films
ADD CONSTRAINT check_year
CHECK (release_year > 1800 AND release_year <= 2100);

-- Test invalid insertion (should fail)
INSERT INTO films VALUES ('tt8888888', 'Old Film', 1700, 5.0, 'Drama');

```

**Status:**  **PASSED**  
**Result:** Constraint created and enforced successfully

**Sample Output:**
```

ERROR 1264 (HY000): new row for relation "films" violates check constraint "check_year"

```

**Notes:**
- CHECK constraints fully functional
- Complex boolean expressions supported
- Constraint violations properly reported
- Data validation working as expected

---

### Test 10.4: DROP Constraint
**Query:**
```

-- Drop UNIQUE constraint
ALTER TABLE films DROP CONSTRAINT unique_title;

-- Drop CHECK constraint
ALTER TABLE films DROP CONSTRAINT check_year;

-- Drop FOREIGN KEY constraint
ALTER TABLE film_actor DROP CONSTRAINT fk_actor;

-- Verify removal
SHOW INDEX FROM films;
SHOW CREATE TABLE film_actor;

```

**Status:**  **PASSED**  
**Results:** All constraints successfully removed

**Notes:**
- Constraint removal works correctly
- Multiple constraint types can be dropped
- No cascading effects on data
- Table structure remains intact after constraint removal

---

## Advanced Subqueries

### Test 11.1: Derived Table (Subquery in FROM)
**Query:**
```

SELECT * FROM (
SELECT primaryname, birthyear
FROM name_basics
WHERE birthyear > 1980
) AS young_actors
LIMIT 10;

```

**Status:**  **PASSED**  
**Execution Time:** 0.02 sec

**Sample Output:**
```

+------------------------+-----------+
| primaryname            | birthyear |
+------------------------+-----------+
| Kenneth Earl Medrano   |      1991 |
| Miki Bosch             |      2001 |
| Geordie Cowan          |      1994 |
| Kyle Stegina           |      1987 |
| Ankur Verma            |      1996 |
+------------------------+-----------+

```

**Notes:**
- Derived tables (subqueries in FROM) fully supported
- Alias required for subquery
- Performance comparable to regular queries
- Complex SELECT logic can be nested

---

### Test 11.2: Correlated Subquery
**Query:**
```

SELECT nb1.primaryname, nb1.birthyear
FROM name_basics nb1
WHERE nb1.birthyear > (
SELECT AVG(birthyear)
FROM name_basics nb2
WHERE nb2.primaryprofession = nb1.primaryprofession
AND nb2.birthyear IS NOT NULL
)
LIMIT 10;

```

**Status:**  **PASSED**  
**Execution Time:** 1.62 sec

**Sample Output:**
```

+----------------------+-----------+
| primaryname          | birthyear |
+----------------------+-----------+
| Kenneth Earl Medrano |      1991 |
| Brandie Park         |      1976 |
| Miki Bosch           |      2001 |
| Geordie Cowan        |      1994 |
+----------------------+-----------+

```

**Notes:**
- Correlated subqueries work correctly
- Subquery references outer query columns
- Performance slower due to repeated execution
- Aggregate functions in subqueries supported

---

### Test 11.3: EXISTS Operator
**Query:**
```

SELECT primaryname, primaryprofession
FROM name_basics nb
WHERE EXISTS (
SELECT 1 FROM film_actor fa
WHERE fa.nconst = nb.nconst
)
LIMIT 10;

```

**Status:**  **PASSED**  
**Execution Time:** 0.03 sec

**Sample Output:**
```

+---------------------+-------------------------+
| primaryname         | primaryprofession       |
+---------------------+-------------------------+
| Giuliano Castaldo   | composer,actor,director |
| Luis Javier Flores  | actor                   |
| Curtis Tyler Haynes | actor                   |
+---------------------+-------------------------+

```

**Notes:**
- EXISTS operator works efficiently
- Returns results only when subquery has matches
- Performance optimized (stops at first match)
- Useful for semi-joins




## Data Export

### Test 12.1: INTO OUTFILE Export
**Query:**
```

SELECT primaryname, birthyear, primaryprofession
FROM name_basics
WHERE primaryprofession = 'actor'
INTO OUTFILE '/tmp/actors.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

```

**Status:**  **FAILED**  
**Error:** `ERROR 1478 (HY000): syntax error at or near "INTO"`

**Notes:**
- INTO OUTFILE syntax not supported in OpenHalo
- Standard MySQL export feature unavailable

---

### Test 12.2: Shell-Based Export (Workaround)
**Command:**
```

mysql -P 3306 -h 127.0.0.1 -e "USE imdb; SELECT * FROM name_basics LIMIT 100;" | sed 's/\t/,/g' > ~/actors.csv

```

**Status:**  **PASSED (Alternative Method)**

**Notes:**
- Shell redirection provides working export alternative
- CSV formatting requires additional processing with `sed`
- Suitable for batch exports and automation

---

## Advanced Features

### Test 13.1: Fuzzy Search with LIKE
**Query:**
```

SELECT * FROM name_basics
WHERE primaryname LIKE '%Leonardo%DiCaprio%';

```

**Status:**  **PARTIAL**  
**Result:** Empty set (pattern too specific)

**Working Alternative:**
```

SELECT * FROM name_basics
WHERE primaryname LIKE '%Tom%'
LIMIT 10;

```
**Status:**  **PASSED**

**Notes:**
- LIKE operator works correctly
- Pattern matching requires data to exist
- No dedicated fuzzy matching function found

---

### Test 13.2: Clustering Operations
**Query:**
```

CLUSTER films BY genre;

```

**Status:**  **NOT TESTED**  
**Reason:** Feature availability unknown; requires documentation review

---

### Test 13.3: Recommendation Systems
**Query:**
```

RECOMMEND films SIMILAR TO 'Inception';

```

**Status:**  **NOT TESTED**  
**Reason:** Custom syntax; not part of standard MySQL/PostgreSQL

---

## Test Summary

### Results Overview
```
| Category | Tested | Passed | Failed | Not Tested | Success Rate |
|----------|--------|--------|--------|------------|--------------|
| Basic Queries | 2 | 2 | 0 | 0 | 100% |
| Filtering/Sorting | 1 | 1 | 0 | 0 | 100% |
| Aggregations | 4 | 4 | 0 | 0 | 100% |
| CRUD Operations | 4 | 4 | 0 | 0 | 100% |
| Indexes | 3 | 3 | 0 | 0 | 100% |
| Joins | 6 | 6 | 0 | 0 | 100% |
| Views & Transactions | 5 | 5 | 0 | 0 | 100% |
| String Functions | 6 | 6 | 0 | 0 | 100% |
| Advanced SQL | 2 | 1 | 1 | 0 | 50% |
| Data Export | 2 | 1 | 1 | 0 | 50% |
| Database Constraints | 4 | 4 | 0 | 0 | 100% |
| Advanced Subqueries | 3 | 3 | 0 | 0 | 100% |
| Advanced Features | 1 | 1 | 0 | 2 | 100% |
| **TOTAL** | **43** | **41** | **2** | **2** | **95.3%** |

```

## Observations

### Strengths
1. **Excellent Standard SQL Compatibility**
   - All basic MySQL queries work flawlessly
   - CRUD operations fully functional
   - Aggregation functions perform accurately

2. **Index Support**
   - CREATE INDEX works without issues
   - Index creation times reasonable (< 500ms)
   - Query performance improved with indexes

3. **Data Type Handling**
   - VARCHAR, INT, NULL values handled correctly
   - Pattern matching with LIKE fully functional
   - Mathematical functions (FLOOR, AVG, etc.) work as expected

4. **Transaction Support**
   - INSERT, UPDATE, DELETE all atomic
   - Data integrity maintained
   - No data corruption observed

5. **JOIN Support**
   - INNER JOIN, LEFT JOIN fully functional
   - Multi-table JOINs (3+ tables) work correctly
   - Subqueries with JOINs supported
   - SELF JOIN syntax recognized
   - Complex aggregations with JOINs perform well

6. **View Support**
   - CREATE VIEW, DROP VIEW fully functional
   - Views can be queried like regular tables
   - Complex SELECT statements supported in views

7. **Transaction Management**
   - START TRANSACTION, COMMIT, ROLLBACK work correctly
   - ACID properties respected
   - Transaction isolation functional

8. **String Functions**
   - CONCAT, SUBSTRING, UPPER, LOWER, LENGTH, REPLACE, TRIM all supported
   - UTF-8 encoding handled correctly
   - Performance excellent for string operations

9. **Constraint Support**
   - UNIQUE, FOREIGN KEY, CHECK constraints all functional
   - Constraint violations properly detected and reported
   - ALTER TABLE ADD/DROP CONSTRAINT works correctly
   - Referential integrity enforced

10. **Advanced Subquery Support**
    - Derived tables (subqueries in FROM) work perfectly
    - Correlated subqueries fully functional
    - EXISTS operator performs efficiently
    - Complex nested queries supported


### Limitations
1. **Export Functionality**
   - INTO OUTFILE not supported
   - Requires workaround using shell commands
   - May impact user experience for MySQL migrations

2. **Documentation Gaps**
   - Advanced features not well-documented
   - Custom OpenHalo-specific functions unclear
   - Migration guide would be beneficial

3. **Testing Gaps**
   - ~~Multi-table joins not validated~~ ✅ **TESTED**
   - ~~Transaction rollback not tested~~ ✅ **TESTED**
   - ~~View creation not tested~~ ✅ **TESTED**
   - ~~Constraints (FOREIGN KEY, CHECK) not tested~~ ✅ **TESTED**
   - Stored procedures not evaluated
   - Triggers not tested

4. **UNION Operations**
   - UNION operator not supported
   - May require query rewriting for migrations
   - Alternative approaches needed for combining result sets
---


## Problematic Queries

This section documents MySQL features that failed when executed against OpenHalo via the MySQL protocol, and confirms that each feature is officially supported in MySQL 5.7.32 by running the same queries using native MySQL 5.7.32. We do this because OpenHalo explicitly targets MySQL 5.7 wire protocol and SQL dialect compatibility; this ensures that any discrepancies observed in this report are due to OpenHalo’s implementation limits rather than missing or deprecated features in older MySQL versions.
If queries are slightly changed for whatever reason, it will be mentioned under the **MySQL 5.7.32 Queries**, and explained in the **Notes** sections of each problematic query.

---

### 1) MySQL-only JSON helpers

**Queries:**
```sql
SELECT JSON_EXTRACT('{"a": 1}', '$.a');

SELECT JSON_SET('{"a": 1}', '$.a', 2);
```

**OpenHalo Result:**

ERROR 32900 (HY000): function json_extract(unknown, unknown) does not exist

**Explanation:**  

MySQL exposes a native JSON type and a family of JSON functions such as `JSON_EXTRACT`, `JSON_SET`, and the aggregate `JSON_ARRAYAGG`. PostgreSQL provides JSON and JSONB types but uses different operators and function names, and OpenHalo’s MySQL compatibility layer does not rewrite these MySQL-specific JSON calls into PostgreSQL equivalents, so they error out at function resolution time.

**MySQL 5.7.32 Result:**  

<img width="329" height="108" alt="Screenshot 2025-12-03 at 15 18 18" src="https://github.com/user-attachments/assets/7527ada7-8cd0-4688-8159-4ef69ba5e4a2" />

<img width="327" height="109" alt="Screenshot 2025-12-03 at 15 18 28" src="https://github.com/user-attachments/assets/5ca80c14-9d1e-4ffa-ab0a-f3211b1290cb" />



**Verdict:** 

Works in MySQL 5.7.32; 

Fails in OpenHalo due to missing JSON function translation. 

---

### 2) Multi-table DELETE

**Query:**
```sql
DELETE nb

FROM public.name_basics nb

JOIN public.name_basics nb2

ON nb.nconst = nb2.nconst

WHERE nb.birthyear < 1800;
```

**OpenHalo Result:**

ERROR 1478 (HY000): syntax error at or near "JOIN"

**Explanation:**  

This uses MySQL’s multi-table `DELETE ... FROM ... JOIN ...` syntax. PostgreSQL expresses the same operation using `DELETE ... FROM ... USING ...`, and OpenHalo does not translate the MySQL form into the PostgreSQL equivalent, so parsing fails when the `JOIN` keyword appears in a DELETE context.

**MySQL 5.7.32 Queries**  
```sql
USE imdb;

CREATE TABLE nb_test AS

SELECT *

FROM name_basics

LIMIT 10;

DELETE nb

FROM nb_test nb

JOIN nb_test nb2

ON nb.nconst = nb2.nconst

WHERE nb.birthyear < 1800;

SELECT COUNT(*) AS remaining_rows FROM nb_test;

SELECT nconst, birthyear

FROM nb_test

ORDER BY birthyear

LIMIT 5;
```

**MySQL 5.7.32 Results**

<img width="408" height="118" alt="Screenshot 2025-12-03 at 15 27 08" src="https://github.com/user-attachments/assets/498e4a67-42fe-4564-8841-e47371a9e2a2" />

<img width="510" height="165" alt="Screenshot 2025-12-03 at 15 27 13" src="https://github.com/user-attachments/assets/51e411c0-5ded-4329-8b95-6d2d680b6019" />

**Note:**  
To avoid modifying the main table, the delete was tested against a small copy which explains the extra lines in the query.

In this particular data slice there were no rows with `birthyear < 1800`, so the DELETE affected 0 rows, but the statement parsed and executed successfully, confirming that the multi-table DELETE syntax itself is valid and supported in MySQL 5.7.32.

**Verdict:**  

Multi-table `DELETE ... FROM ... JOIN ...` is supported in MySQL 5.7.32. 

OpenHalo does not currently support this MySQL DELETE+JOIN syntax via the MySQL protocol.

### 3) MySQL explicit index hints

**Query:**
```sql
SELECT *

FROM public.name_basics FORCE INDEX (PRIMARY)

WHERE birthyear < 1900

LIMIT 5;
```

**OpenHalo Result:**

ERROR 1478 (HY000): syntax error at or near "PRIMARY"

**Explanation:**  

`FORCE INDEX (PRIMARY)` is a MySQL optimizer hint instructing the engine to prefer a particular index. PostgreSQL does not support index hints in this form, and OpenHalo’s MySQL layer does not strip or reinterpret the hint, so the parser encounters `PRIMARY` in an invalid position and raises an error.

**MySQL 5.7 Results:**  

<img width="917" height="201" alt="Screenshot 2025-12-03 at 15 35 07" src="https://github.com/user-attachments/assets/91e7f688-3d71-4c0e-8c15-767437b7ae9a" />

**Verdict:**  

`FORCE INDEX (PRIMARY)` is supported in MySQL 5.7.32. 
 
 OpenHalo does not support MySQL index hints via the MySQL protocol.


---

### 4) MySQL partitioning syntax

**Query:**
```sql
CREATE TABLE part_test (
  
  id INT,
  
  created_at DATE,
  
  PRIMARY KEY (id, created_at)

)

PARTITION BY RANGE (YEAR(created_at)) (
  
  PARTITION p0 VALUES LESS THAN (2000),
  
  PARTITION p1 VALUES LESS THAN (2010),
  
  PARTITION pmax VALUES LESS THAN MAXVALUE

);
```

**OpenHalo Result:**

ERROR 1478 (HY000): syntax error at or near "("

**Explanation:**  

This uses MySQL’s table partitioning DDL with `PARTITION BY RANGE (YEAR(created_at))`. PostgreSQL has its own partitioning model and syntax on `CREATE TABLE`, and OpenHalo does not attempt to transform MySQL partition clauses into native PostgreSQL partition definitions. As a result, parsing fails immediately after the `PARTITION BY RANGE` clause.

**MySQL 5.7 Results:**  

<img width="386" height="173" alt="Screenshot 2025-12-03 at 15 48 18" src="https://github.com/user-attachments/assets/4f6e5e9c-eb14-47e3-a724-165b4ee81f79" />

**Verdict:** 

Works in MySQL 5.7.32 

Fails in OpenHalo because MySQL partition DDL is not translated.

---

### 5) MySQL stored procedures

**Query:**
```sql
DELIMITER $$

CREATE PROCEDURE get_actors()

BEGIN

SELECT *

FROM public.name_basics

WHERE primaryprofession LIKE '%actor%'

LIMIT 5;

END$$

DELIMITER ;

CALL get_actors();
```

**OpenHalo Result:**

ERROR 1478 (HY000): syntax error at or near "SELECT"

**Explanation:**  

MySQL stored procedures use a statement-based language with `CREATE PROCEDURE`, `BEGIN ... END` blocks, and procedure-level control flow. PostgreSQL uses PL/pgSQL functions with different syntax and execution model. OpenHalo’s compatibility layer does not rewrite MySQL stored procedure definitions into PostgreSQL functions, so the body of the procedure fails to parse in this context.

**MySQL 5.7.32 Queries:**  
```sql
USE imdb;

DELIMITER $$


CREATE PROCEDURE get_actors()

BEGIN

SELECT *

FROM name_basics

WHERE primaryprofession LIKE '%actor%'

LIMIT 5;

END$$

DELIMITER ;

CALL get_actors();
```

**MySQL 5.7.32 Results:** 

<img width="387" height="152" alt="Screenshot 2025-12-03 at 15 53 15" src="https://github.com/user-attachments/assets/7e3d58c1-1925-4479-8dde-be5a7867fb86" />
<img width="931" height="217" alt="Screenshot 2025-12-03 at 15 53 21" src="https://github.com/user-attachments/assets/95c0a1ee-bf52-4f2c-b4e4-5c13fe17de75" />

**Notes**

On native MySQL 5.7.32 the table is name_basics in the imdb database (no public. schema). On OpenHalo the same data is exposed as public.name_basics because it runs on PostgreSQL. This difference does not affect stored procedure support; the procedure body compiles and executes correctly on MySQL 5.7.32 once the table name is adjusted.

**Verdict:**  
Works in MySQL 5.7.32; 

Fails in OpenHalo because stored procedure DDL is not supported.


---

### 6) MySQL FULLTEXT search (MATCH ... AGAINST)

**Queries:**
```sql
CREATE FULLTEXT INDEX ft_name

ON public.name_basics (primaryname);

SELECT *

FROM public.name_basics

WHERE MATCH(primaryname) AGAINST('Fred' IN NATURAL LANGUAGE MODE);
```

**OpenHalo Result:**

- Index creation: succeeds  

- Query:

ERROR 1478 (HY000): syntax error at or near "AGAINST"

**Explanation:**  

OpenHalo accepts the `CREATE FULLTEXT INDEX` DDL syntax and maps it to a PostgreSQL index type, but the MySQL query form `MATCH(...) AGAINST(...)` is not recognized. PostgreSQL full-text search uses functions and operators such as `to_tsvector`, `to_tsquery`, and `@@`, and OpenHalo does not translate the MySQL FULLTEXT query syntax to those primitives.

**MySQL 5.7 Queries:**  
```sql
CREATE FULLTEXT INDEX ft_name

ON name_basics (primaryname);

SELECT *

FROM name_basics

WHERE MATCH(primaryname) AGAINST('Fred' IN NATURAL LANGUAGE MODE);
```
**MySQL Results:** 

<img width="339" height="65" alt="Screenshot 2025-12-03 at 16 11 50" src="https://github.com/user-attachments/assets/4df289ec-9b43-490d-8b72-ffa0acf39a50" />

<img width="1095" height="455" alt="Screenshot 2025-12-03 at 16 11 57" src="https://github.com/user-attachments/assets/3de2e9c7-dc2b-456e-a8f5-1e629f77e43b" />

**Notes**

On native MySQL 5.7.32 the table is stored as name_basics in the imdb database (there is no public schema), so the MySQL test replaces public.name_basics with name_basics and adds an explicit CREATE FULLTEXT INDEX ft_name ON name_basics(primaryname). Apart from this schema-name difference, the FULLTEXT index definition and search condition are identical to the OpenHalo test. Going forward, differneces in queries due to schema-name won't be brought up.


**Verdict**

FULLTEXT indexes and MATCH(...) AGAINST(...) queries are supported and work as expected in MySQL 5.7.32 on the same dataset.

OpenHalo accepts the FULLTEXT index DDL but does not support the MATCH ... AGAINST query syntax via the MySQL protocol (syntax error at AGAINST).

---

### 7) MySQL SPATIAL indexes and functions

**Queries:**
```sql
CREATE SPATIAL INDEX idx_spatial

ON public.name_basics (primaryname);

SELECT ST_Distance(POINT(0,0), POINT(1,1));
```
**OpenHalo Result:**

- Index creation: succeeds  

- Function call:

ERROR 32900 (HY000): function st_distance(point, point) does not exist

**Explanation:**  

The `CREATE SPATIAL INDEX` syntax is accepted, but spatial functions such as `POINT()` and `ST_Distance()` are not implemented by OpenHalo’s MySQL layer. PostgreSQL typically relies on PostGIS for spatial operations, which uses its own function and type system. OpenHalo does not map MySQL spatial function calls onto PostGIS or PostgreSQL equivalents, so function lookup fails.

**MySQL 5.7 Results:**  

<img width="583" height="52" alt="Screenshot 2025-12-03 at 16 52 38" src="https://github.com/user-attachments/assets/f6cf926f-4550-493b-b08b-2f26cbf8fb60" />

<img width="366" height="106" alt="Screenshot 2025-12-03 at 16 52 59" src="https://github.com/user-attachments/assets/a74ada73-1945-4b8d-bf2d-900f7fe56e34" />

**Notes**

The same SQL text is used on both systems: the SPATIAL index DDL is left unchanged even though it is invalid in MySQL 5.7.32 (because `primaryname` is not a geometry column) and surprisingly accepted by 

OpenHalo; this highlights that OpenHalo’s DDL parser is more permissive here but not fully MySQL‑compatible. The real compatibility gap is in spatial *functions*: MySQL 5.7.32 successfully evaluates `ST_Distance(POINT(0,0), POINT(1,1))`, while OpenHalo reports that `st_distance(point, point)` does not exist, indicating missing implementation of MySQL GIS function semantics.

**Verdict:** 

Core spatial functions like `POINT()` and `ST_Distance()` are supported in MySQL 5.7.32.

OpenHalo accepts the SPATIAL index DDL but does not support MySQL spatial function calls via the MySQL protocol.

---

### 8) MySQL HANDLER commands

**Query:**
```sql
HANDLER public.name_basics OPEN;
```
**OpenHalo Result:**

ERROR 1478 (HY000): syntax error at or near "HANDLER"

**Explanation:**  

`HANDLER` statements are a MySQL-specific low-level table access mechanism that bypasses the SQL optimizer for direct cursor-like operations. PostgreSQL has no equivalent feature, and OpenHalo does not implement or emulate MySQL HANDLER syntax, so these statements fail immediately at the keyword.

**MySQL 5.7 Results:**  

<img width="896" height="195" alt="Screenshot 2025-12-03 at 16 56 02" src="https://github.com/user-attachments/assets/9ed5eb4a-704b-424d-95da-ff48fdc66f56" />

**Verdict:**

`HANDLER ... OPEN/READ/CLOSE` statements are supported and work as documented in MySQL 5.7.32.

OpenHalo does not support MySQL HANDLER statements via the MySQL protocol (syntax error at `HANDLER`).

---

### 9) SHOW TABLE STATUS
**OpenHalo Query**
```sql
USE imdb;

SHOW TABLE STATUS;
```
**OpenHalo Results:**

ERROR 130 (HY000): invalid value for parameter "search_path"

ERROR 1049 (HY000): no schema has been selected to create in

**Explanation:**  

SHOW TABLE STATUS relies on a valid “current database” set by USE dbname; in MySQL, but on OpenHalo USE imdb; is translated into a PostgreSQL search_path change and fails because there is no corresponding imdb schema, which produces ERROR 130 (HY000): invalid value for parameter "search_path". As a result, there is still no usable current-database context when SHOW TABLE STATUS; runs, so it immediately fails with ERROR 1049 (HY000): no schema has been selected to create in, even though the same USE imdb; SHOW TABLE STATUS; sequence works as documented on native MySQL 5.7.32

**MySQL 5.7 Results:**  

<img width="1681" height="270" alt="Screenshot 2025-12-03 at 16 57 36" src="https://github.com/user-attachments/assets/3040c665-4dce-44f5-b428-5f4df0d0f59b" />

**Verdict:**

USE imdb; followed by SHOW TABLE STATUS; works as expected on MySQL 5.7.32 and returns table metadata for the selected database.​

On OpenHalo, USE imdb; fails due to an invalid PostgreSQL search_path and SHOW TABLE STATUS; cannot run without a valid current-database context.​

---

### 10) MySQL GET DIAGNOSTICS

**Query:**
```sql
GET DIAGNOSTICS @rows = ROW_COUNT;
```
**OpenHalo Result:**

ERROR 1478 (HY000): syntax error at or near "GET"

**Explanation:**  

`GET DIAGNOSTICS` is a MySQL statement that reads information from the diagnostics area (for example, the `ROW_COUNT` of the last DML statement) into a user-defined variable. PostgreSQL exposes diagnostics in a different way inside PL/pgSQL, and OpenHalo’s MySQL layer does not implement the MySQL `GET DIAGNOSTICS` syntax at all, so the parser rejects the statement at the `GET` keyword.


**MySQL 5.7 Results:**  

<img width="310" height="53" alt="Screenshot 2025-12-03 at 17 06 52" src="https://github.com/user-attachments/assets/cb7ab775-6dbd-4831-9866-b4208d8baa0b" />


**Verdict:** 

`GET DIAGNOSTICS @rows = ROW_COUNT;` is a supported MySQL 5.7.32 statement for accessing the diagnostics area. 

OpenHalo does not support the MySQL `GET DIAGNOSTICS` statement via the MySQL protocol (syntax error at `GET`).

---
### 11) SELECT ... INTO OUTFILE (server-side export)

**OpenHalo Query (MySQL protocol, port 3306):**
```sql
SELECT primaryname, birthyear, primaryprofession

FROM public.name_basics

WHERE primaryprofession = 'actor'

INTO OUTFILE '/tmp/actors_openhalo.csv'

FIELDS TERMINATED BY ','

ENCLOSED BY '"'

LINES TERMINATED BY '\n';
```

**OpenHalo Result:**

ERROR 1478 (HY000): syntax error at or near "INTO"


**Explanation**  

`SELECT ... INTO OUTFILE` is standard MySQL syntax for exporting query results to a server-side file, with options to control field and line formatting. On OpenHalo, the parser does not recognize the `INTO OUTFILE` clause in a SELECT statement, so the query fails at the `INTO` keyword even though the preceding SELECT is valid.

**MySQL 5.7.32 Results**

<img width="469" height="120" alt="Screenshot 2025-12-05 at 15 17 44" src="https://github.com/user-attachments/assets/e4fc19ee-8de9-4084-9b41-79214d2a7ccb" />

**Verdict**  

`SELECT ... INTO OUTFILE` is supported and works as documented in MySQL 5.7.32. [web:238][web:239]  

OpenHalo does not support the `INTO OUTFILE` clause in SELECT statements via the MySQL protocol (syntax error at `INTO`).


---



### Conclusion for Problematic Queries

All of the features above are documented in the official MySQL 5.7 Reference Manual and are part of the 5.7 feature set; the observed failures occur because OpenHalo’s MySQL compatibility layer focuses on “commonly used” DML and basic DDL and does not currently implement or translate these more advanced or MySQL-specific constructs.



---





### 3) MySQL explicit index hints

**Query:**



## Recommendations

### Short-Term
1. **Expand Test Dataset**
   - Import `title_basics` table (films/TV shows)
   - Import `title_ratings` table
   - Import `title_principals` table (actors/directors relationships)
   - Test JOIN operations across multiple tables

2. **Test Additional Features**
   - Stored procedures creation and execution
   - Trigger functionality
   - View creation and querying
   - Transaction management (BEGIN, COMMIT, ROLLBACK)

3. **Performance Testing**
   - Benchmark query performance with larger datasets (1M+ rows)
   - Compare performance: MySQL protocol vs PostgreSQL protocol
   - Test concurrent connections
   - Measure index impact on query speed

### Long-Term
1. **Create Comprehensive Migration Guide**
   - Document known incompatibilities
   - Provide workarounds for unsupported features
   - Create migration checklist for MySQL users

2. **Develop Testing Framework**
   - Automated test suite for regression testing
   - Performance benchmarking tools
   - Compatibility validation scripts

3. **Community Contribution**
   - Share test results with OpenHalo community
   - Report bugs and limitations
   - Contribute to documentation



## Appendix: Quick Reference

### Connection Commands
```


# MySQL Connection

mysql -P 3306 -h 127.0.0.1 -u halo -p

# PostgreSQL Connection

psql -p 5432 -d imdb

# Check Server Status

pg_ctl status

```

### Common Operations
```

-- List databases
SHOW DATABASES;

-- Use database
USE imdb;

-- List tables
SHOW TABLES;

-- Describe table structure
DESCRIBE name_basics;

-- Show indexes
SHOW INDEX FROM name_basics;

```

---

## Support and Resources
- **OpenHalo GitHub:** https://github.com/HaloTech-Co-Ltd/openHalo

---

**Last Updated:** December 3, 2025   
**Review Status:** Complete
```
