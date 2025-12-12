#!/bin/bash
set -e

echo "=== Start of Openhalo (PostgreSQL + compat MySQL) ==="

if [ ! -s "$PGDATA/PG_VERSION" ]; then
    echo "Initializing PostgreSQL..."
    # Initialize the database cluster
    initdb -D "$PGDATA" --encoding=UTF8 --lc-collate='C' --lc-ctype='C'

    echo "Configuring MySQL compatibility..."
    # Configuration added to postgresql.conf
    echo "database_compat_mode = 'mysql'"        >> $PGDATA/postgresql.conf
    echo "mysql.listener_on = true"             >> $PGDATA/postgresql.conf
    echo "mysql.port = 3308"                    >> $PGDATA/postgresql.conf
    echo "listen_addresses = '*'"               >> $PGDATA/postgresql.conf
    echo "port = 5434"                          >> $PGDATA/postgresql.conf
    echo "unix_socket_directories = '/tmp'"     >> $PGDATA/postgresql.conf

    # Access configuration (allows passwordless local connection)
    echo "host all all all trust"               >> $PGDATA/pg_hba.conf

    echo "Temporary start to create the database..."
    
    # Temporarily start the server in the background
    # Note: pg_ctl is used for temporary initialization
    pg_ctl -D "$PGDATA" -l "$PGDATA/temp_logfile" start
    
    # Wait for the server to be ready (default connection to template1)
    until pg_isready -h /tmp -U $(whoami) -d template1; do
        echo "Waiting for PostgreSQL (temp) via socket..."
        sleep 1
    done

    echo "Creating the 'openhalo' database and setting the password for user 'halo'..."
    # Execute SQL commands to create the DB and user
    psql -h /tmp -U $(whoami) -d template1 -c "CREATE DATABASE openhalo OWNER halo; ALTER USER halo WITH PASSWORD 'mysecret';"
    
    # Stop the temporary server
    pg_ctl -D "$PGDATA" stop -m fast
    echo "Temporary server stopped. DB 'openhalo' created."
fi

# Final Start of OpenHalo Server
echo "Starting PostgreSQL server..."    
# Use 'exec' so that the PostgreSQL process becomes PID 1 in the container.
# We pass the configuration via the command line to ensure listen_addresses='*' is applied.
exec $HALO_HOME/bin/postgres -D "$PGDATA" -c "listen_addresses='*'" -c "port=5434"
