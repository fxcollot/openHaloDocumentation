# 🛠️ OpenHalo Benchmarking & Compatibility Suite - User Guide

This document provides instructions on how to configure and run the `openhalo_test_suite.py`. This tool automates compatibility testing, regression analysis, and performance benchmarking between a native MySQL instance and OpenHalo.

## 1. Prerequisites

### Python Environment
Ensure you have **Python 3.8+** installed. Install the required dependencies:

```bash
pip install mysql-connector-python matplotlib numpy
```
### Database Requirements (IMDB Dataset)

The script is specifically designed to test against the **IMDB dataset**. Before running the tool, ensure the following tables exist and are populated with data on **both** your MySQL and OpenHalo instances:

* **`name_basics`** (Primary test table)
* **`films`** (Used for Joins)
* **`film_actor`** (Junction table for Joins)

> **Note:**
> * We **do not provide** the `films` table in the repository. It is at the user's discretion to import it or create a compatible table if they wish to execute the JOIN test scenarios.
> * If you are using a completely different dataset, you will need to modify the `DynamicQueryBuilder` class and the `SCHEMA` dictionary at the beginning of the script.
> * 
## 2. Configuration

Open `openhalo_test_suite.py` in your code editor. Scroll down to the `main()` function (near the bottom) and update the connection dictionaries. **You must adapt the `host`, `port`, `user`, `password`, and `database` fields to match your local environment.**

```python
def main():
    # --- Configuration ---
    
    # 1. OpenHalo Configuration (Target)
    openhalo_config = {
        'host': 'localhost',  # Or Docker container IP
        'port': 3306,         # Standard OpenHalo port
        'user': 'halo',       # Update with your OpenHalo username
        'password': 'halo',   # Update with your OpenHalo password
        'database': 'testdb'  # Ensure this database exists
    }

    # 2. MySQL Configuration (Reference "Source of Truth")
    mysql_config = {
        'host': 'localhost',
        'port': 3309,         # Adjust if running on a different port (e.g., via Docker)
        'user': 'root',       # Update with your MySQL username
        'password': 'password', # Update with your MySQL password
        'database': 'testdb'  # Must match the OpenHalo database name for valid comparison
    }
```

## 3. Running the Suite

Execute the script from your terminal:

```bash
python3 openhalo_test_suite.py
```
### Execution Flow
1.  **Connectivity Check:** Verifies access to both database instances.
2.  **Functional Testing:** Runs ~50 predefined scenarios (CRUD, Joins, Aggregations, JSON, etc.).
3.  **Dynamic Fuzzing:** Generates random valid SQL queries to test parser robustness.
4.  **Performance Benchmarking:**
    * **Stress Test:** Simulates 10 concurrent threads for 5 seconds.
    * **Bulk Insert:** Tests high-speed data ingestion.
5.  **Report Generation:** Saves logs and renders performance graphs.

## 4. Analyzing the Results

Upon completion, the script generates several artifacts in the current directory:

### 📄 Terminal Output (Summary)
The script prints a synthesis report directly to the console, including:
* **Global Stats:** Count of Success/Failures.
* **🐢 Hall of Shame:** Top 10 queries where OpenHalo is significantly slower (>1.5x) than MySQL.
* **🚀 Hall of Fame:** Queries where OpenHalo outperforms MySQL.
* **🚫 Unsupported Features:** List of queries that failed due to syntax or missing features.

### 📊 Visual Reports (Images)
* **`benchmark_full_report.png`**:
    * **TPS (Transactions Per Second):** Higher is better. Checks if OpenHalo handles concurrency well.
    * **P95 Latency:** Lower is better. Represents the response time for 95% of requests.
* **`benchmark_complex_queries.png`**:
    * A side-by-side comparison of specific "heavy" operations (Multi-joins, Subqueries).
* **`benchmark_scatter_comparison.png`**:
    * A scatter plot where every dot is a query.
    * **Green Zone:** Queries faster on OpenHalo.
    * **Red Zone:** Queries faster on MySQL.

### 📝 Data Logs
* **`openhalo_full_compatibility_report.json`**:
    * Contains the raw execution data, timings, and error messages for every single query tested. Useful for debugging specific failures.

## 5. Troubleshooting

* **`mysql.connector.errors.DatabaseError: 2003: Can't connect...`**
    * Ensure your Docker containers are running.
    * Check if the ports in `openhalo_config` match your docker compose mapping.

* **`ProgrammingError: Table 'testdb.name_basics' doesn't exist`**
    * The IMDB dataset is missing. Please import the SQL dumps into both databases before testing.

* **Graphs are not generated:**
    * If the script crashes before the end (e.g., critical network error), graphs won't be saved. Check the console logs for the specific Python traceback.
