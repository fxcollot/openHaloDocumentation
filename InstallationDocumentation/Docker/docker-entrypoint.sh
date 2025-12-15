#!/bin/bash
set -e

echo "=== Start of Openhalo (PostgreSQL + compat MySQL) ==="

# Define default environment variables if not set
PGUSER=${PGUSER:-halo}
PGPASSWORD=${PGPASSWORD:-mysecret}
DBNAME=${DBNAME:-openhalo}
PGDATA=${PGDATA:-/home/halo/ohdata}
PYTHON_SCRIPT="/home/halo/openhalo_test_suite.py"

# --- PART 1: INITIALIZATION (First run only) ---
if [ ! -s "$PGDATA/PG_VERSION" ]; then
    echo "--- Initialization Phase ---"

    # Cluster initialization (UTF8 is CRITICAL for aux_mysql)
    echo "1. Initializing PostgreSQL (UTF8)..."
    initdb -D "$PGDATA" --encoding=UTF8 --lc-collate='C' --lc-ctype='C'

    # Configuration of configuration files
    echo "2. Configuring MySQL compatibility mode..."
    echo "database_compat_mode = 'mysql'"        >> $PGDATA/postgresql.conf
    echo "mysql.listener_on = true"             >> $PGDATA/postgresql.conf
    echo "mysql.port = 3308"                    >> $PGDATA/postgresql.conf
    echo "listen_addresses = '*'"               >> $PGDATA/postgresql.conf
    echo "port = 5434"                          >> $PGDATA/postgresql.conf
    echo "unix_socket_directories = '/tmp'"     >> $PGDATA/postgresql.conf
    echo "host all all all trust"               >> $PGDATA/pg_hba.conf

    # --- Temporary Start 1: Create DB/User ---
    echo "3. Temporary start for creating DB/User..."
    pg_ctl -D "$PGDATA" -l "$PGDATA/temp_logfile" start
    
    # Wait for temporary server to be ready
    until pg_isready -h /tmp -U "$PGUSER" -d template1; do
        echo "   (Waiting for PostgreSQL via socket...)"
        sleep 1
    done

    # Create DB and User
    echo "4. Creating database '$DBNAME' and password for '$PGUSER'..."
    psql -h /tmp -U "$PGUSER" -d template1 -c "CREATE DATABASE $DBNAME OWNER $PGUSER;"
    psql -h /tmp -U "$PGUSER" -d template1 -c "ALTER USER $PGUSER WITH PASSWORD '$PGPASSWORD';"
    
    # Stop the server temporary d'initialisation
    pg_ctl -D "$PGDATA" stop -m fast
    echo "Temporary server stopped."

    # --- Temporary Start 2: Extension Installation ---
    echo "5. Targeted restart for installing the 'aux_mysql' extension..."
    pg_ctl -D "$PGDATA" -l "$PGDATA/temp_logfile_ext" start
    
    # Wait for the target database to be ready
    until pg_isready -h /tmp -U "$PGUSER" -d "$DBNAME"; do
        echo "   (Waiting for the target database '$DBNAME'...)"
        sleep 1
    done

    # Critical extension installation (This creates the 'mysql' schema itself)
    echo "6. Installing the 'aux_mysql' extension..."
    psql -h /tmp -U "$PGUSER" -d "$DBNAME" -c "CREATE EXTENSION aux_mysql;"

    # Final stop of the temporary initialization server
    pg_ctl -D "$PGDATA" stop -m fast
    echo "--- Initialization complete. ---"
fi

# --- PART 2: START AND RUN SCRIPT (For all startups) ---

# Start the OpenHalo server in the background (&)
echo "7. Starting the OpenHalo server in the background..."    
$HALO_HOME/bin/postgres -D "$PGDATA" -c "listen_addresses='*'" -c "port=5434" -l "$PGDATA/server.log" &

# Wait for the OpenHalo server (PostgreSQL) to be fully available
until pg_isready -h localhost -p 5434 -U "$PGUSER" -d "$DBNAME"; do
    echo "   (Waiting for the OpenHalo server...) "
    sleep 2
done

echo "8. OpenHalo server is operational."
# Execute the Python script if present
if [ -f "$PYTHON_SCRIPT" ]; then
    echo "9. Executing Python test script: $PYTHON_SCRIPT"
    
    # Execute the script
    python3 "$PYTHON_SCRIPT"
    
    # Check the return code for success/failure
    if [ $? -eq 0 ]; then
        echo "Python script completed SUCCESSFULLY."
    else
        echo "Python script completed with FAILURE (code $?)."
    fi
else
    echo "9. Python script ($PYTHON_SCRIPT) not found, skipping test step."
fi

# Keep the container active by following the main log (PID 1)
echo "10. Keeping the container active (tail -f the logs)..."
exec tail -f "$PGDATA/server.log"
