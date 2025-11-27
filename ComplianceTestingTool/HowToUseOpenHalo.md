# OpenHalo: Create a MySQL Database and Validate It in PostgreSQL

OpenHalo makes it possible to **connect a MySQL client to a PostgreSQL server**.  
All MySQL queries are **automatically translated**, and data is stored in PostgreSQL.

The full workflow is described below.

---

## Creating a MySQL Database Through OpenHalo

Connect using a MySQL root : 

```bash
mysql -u root -p
```
Enter the password predetermined, here : mysecret


## Create a database:

```sql
CREATE DATABASE testdb;
```
Grant all access to client 'halo':

```sql
GRANT ALL PRIVILEGES ON testdb.* TO 'halo'@'%';
FLUSH PRIVILEGES;
```
Exit the root to connect to 'halo':

```sql
exit;
```

Connect using a MySQL client (port 3306):

```bash
mysql -h mysqldb -u halo -p openhalo
```

## Use the database:
```sql
USE testdb;
```

## Verify databases and tables:
```sql
SHOW DATABASES;
SHOW TABLES;  -- should be empty
```

---
## Creating a Table and Inserting Data via MySQL

Create a users table:
```sql
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);
```

Check the table:
```sql
SHOW TABLES;
```

Insert sample rows:
```sql
INSERT INTO users (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com');
```

Query the data:
```sql
SELECT * FROM users;
```
--- 
## Understanding the OpenHalo → PostgreSQL Mapping

The MySQL database `testdb` is automatically mapped to a PostgreSQL schema named `testdb`.

The `users` table created in MySQL now exists within that PostgreSQL schema.

Although operations are performed using a MySQL client, the underlying data is stored entirely in PostgreSQL.

---

## Validating Data in PostgreSQL

Connect to PostgreSQL (port 5432):
```bash
psql -h 127.0.0.1 -p 5432 -U halo -d halo0root
```

List schemas to confirm the mapping:
```sql
\dn
```

The schema `testdb` should be visible.

List the tables in the schema:
```sql
\dt testdb.*
```

Query the data:
```sql
SELECT * FROM testdb.users;
```

Expected output:


```sql
 id |  name   |        email
----+---------+---------------------
 1  | Alice   | alice@example.com
 2  | Bob     | bob@example.com
 3  | Charlie | charlie@example.com
```

---

## Optional: Avoid Prefixing the Schema

To work directly within the schema without specifying it explicitly:

```sql
SET search_path TO testdb;
SELECT * FROM users;
```

The table `users` will be resolved as if working directly on a MySQL database.

---

## Loading a MySQL Database From a `.sql` File

If a database needs to be imported from a MySQL dump file, the process can be performed directly through the MySQL client connected to OpenHalo.

### Importing the SQL File

Ensure that the target database exists:

```sql
CREATE DATABASE mydb;
```

Exit the MySQL prompt if needed, then run:
```bash
docker cp ~/Documents/PCE/openhalo/name_basics_mysql.sql openhalo:/home/halo/name_basics_mysql.sql
```

```bash
mysql -h 127.0.0.1 -P 3306 -u halo -p mydb < /path/to/file.sql
```

OpenHalo will process the SQL file exactly as a MySQL server would, translating supported MySQL constructs into PostgreSQL.

---
## Validating the Imported Structure in PostgreSQL

Once the import is complete, the new schema will be available in PostgreSQL under the same database name:

```sql
\dn
\dt mydb.*
SELECT * FROM mydb.<table_name>;
```

This ensures that the full database structure and its data have been successfully translated and stored.

---
## Summary

- SQL statements are issued through a MySQL client (port 3306).

- OpenHalo automatically translates MySQL queries into PostgreSQL operations.

- Each MySQL database corresponds to a PostgreSQL schema.

- Data can be validated directly from PostgreSQL.

- Databases can also be loaded through a MySQL .sql dump file.
