# OpenHalo: Create a MySQL Database and Validate It in PostgreSQL

OpenHalo makes it possible to **connect a MySQL client to a PostgreSQL server**.  
All MySQL queries are **automatically translated**, and data is stored in PostgreSQL.

The full workflow is described below.

---
## Create the mysql schema 
```bash
  psql -h 127.0.0.1 -p 5434 -U halo -d halo0root
```

```sql
CREATE EXTENSION aux_mysql;
CREATE SCHEMA mysql AUTHORIZATION halo;
CREATE DATABASE openhalo;
\q
```

## Check if the openhalo database is really created

```bash
psql -h 127.0.0.1 -p 5434 -U halo -d openhalo
```
```bash
\q
```

## Creating a MySQL Database Through OpenHalo

Connect to MySQL client halo (port 3308) : 

```bash
  mysql -h openhalo -P 3308 -u root -p
```
Enter the password predetermined, here : halopass


## Create a database:

```sql
CREATE DATABASE testdb;
```

If halo does not have enough access: 
Connect to root: 

```bash
  mysql -h openhalo -P 3308 -u halo -p openhalo
```
Enter the password predetermined, here : halopass

Grant all access to client 'halo':
```sql
GRANT ALL PRIVILEGES ON testdb.* TO 'halo'@'%';
FLUSH PRIVILEGES;
```
Exit the root to connect to 'halo':

```sql
exit;
```

Connect using a MySQL client (port 3308):

```bash
  mysql -h openhalo -P 3308 -u halo -p openhalo
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

Connect to PostgreSQL (port 5434 on Dockercompose):
```bash
psql -h 127.0.0.1 -p 5434 -U halo -d halo0root
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

Add a volume in the 'compose.yaml' in the part 'volumes' of openhalo:
```
- /pathtofile on pc/name_basics_mysql.sql:/home/halo/ohdata/name_basics_mysql.sql:ro
````
Link the file on your computer to a virtual path on docker
ro = read only

Exit the MySQL prompt if needed, then run:

```bash
mysql -h mysqldb -u halo -p -p mydb < /path/to/file.sql
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


---
## Conclusion
- When testdb is created on mysql it does not create itself automatically on Postgre thus the connexion does not work.
- Using Openhalo with a UBI environment, disable the connexion of mysql on Openhalo. The creation and deal of data with Openhalo is broken when containerised. 
