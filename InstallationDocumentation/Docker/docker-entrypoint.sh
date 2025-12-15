#!/bin/bash
set -e

echo "=== Starting Openhalo Container (PostgreSQL + MySQL compatibility) ==="

# Define base variables (Use defaults if not set)
PGUSER=${PGUSER:-halo}
PGPASSWORD=${PGPASSWORD:-mysecret}
DBNAME_DEFAULT="postgres" # Base de données par défaut de l'administration PostgreSQL
PGDATA=${PGDATA:-/home/halo/ohdata}
HALO_BIN="/opt/openhalo/1.0/bin/postgres" 

# --- PART 1: INITIALIZATION (Runs only on first start / empty volume) ---
if [ ! -s "$PGDATA/PG_VERSION" ]; then
    echo "--- Initialization Phase (Triggered because volume is empty) ---"

    # 1. Initialize the cluster (UTF8 is CRITICAL for aux_mysql)
    echo "1. Initializing PostgreSQL (UTF8)..."
    # initdb crée les bases de données par défaut 'postgres' et 'template1'
    initdb -D "$PGDATA" --encoding=UTF8 --lc-collate='C' --lc-ctype='C'

    # 2. Configure configuration files
    echo "2. Configuring MySQL compatibility mode and disabling SSL..."
    
    # 2a. Force SSL to 'off' globally (Répare l'erreur FATAL: SSL is not supported)
    sed -i '/^ssl =/d' $PGDATA/postgresql.conf
    echo "ssl = off"                            >> $PGDATA/postgresql.conf
    
    # Core OpenHalo configuration settings
    echo "database_compat_mode = 'mysql'"        >> $PGDATA/postgresql.conf
    echo "mysql.listener_on = true"             >> $PGDATA/postgresql.conf
    echo "mysql.port = 3308"                    >> $PGDATA/postgresql.conf
    echo "listen_addresses = '*'"               >> $PGDATA/postgresql.conf
    echo "port = 5434"                          >> $PGDATA/postgresql.conf
    echo "unix_socket_directories = '/tmp'"     >> $PGDATA/postgresql.conf
    echo "host all all all trust"               >> $PGDATA/pg_hba.conf

    # --- Temporary Start 1: Create User ---
    echo "3. Temporary start for User creation..."
    pg_ctl -D "$PGDATA" -l "$PGDATA/temp_logfile" start
    
    # Wait for the temporary server (Utilise l'utilisateur par défaut 'postgres' pour l'administration)
    until pg_isready -h /tmp -p 5434 -U postgres -d template1; do
        echo "   (Waiting for PostgreSQL via socket on port 5434...)"
        sleep 1
    done

    # 4. Create User (Utilise l'utilisateur 'postgres' pour se connecter à la DB 'postgres')
    echo "4. Creating user '$PGUSER' and setting password..."
    psql -h /tmp -p 5434 -U postgres -d postgres -c "CREATE USER $PGUSER WITH PASSWORD '$PGPASSWORD';"
    # Donne à 'halo' les droits de connexion sur la base d'administration
    psql -h /tmp -p 5434 -U postgres -d postgres -c "GRANT ALL PRIVILEGES ON DATABASE postgres TO $PGUSER;"
    
    # Stop the server
    pg_ctl -D "$PGDATA" stop -m fast
    echo "Temporary server stopped."

    # --- Temporary Start 2: Install Extension in default DB ---
    echo "5. Targeted restart for 'aux_mysql' extension installation in '$DBNAME_DEFAULT'..."
    pg_ctl -D "$PGDATA" -l "$PGDATA/temp_logfile_ext" start
    
    # Wait for the target database (Nous pouvons maintenant utiliser l'utilisateur 'halo')
    until pg_isready -h /tmp -p 5434 -U "$PGUSER" -d "$DBNAME_DEFAULT"; do
        echo "   (Waiting for target DB '$DBNAME_DEFAULT' via socket on port 5434...)"
        sleep 1
    done

    # 6. Install the critical extension
    # L'utilisateur 'halo' installe l'extension sur la base 'postgres'
    echo "6. Installing 'aux_mysql' extension..."
    psql -h /tmp -p 5434 -U "$PGUSER" -d "$DBNAME_DEFAULT" -c "CREATE EXTENSION aux_mysql;"

    # Final stop of the temporary initialization server
    pg_ctl -D "$PGDATA" stop -m fast
    echo "--- Initialization complete. ---"
fi

# --- PART 2: STARTUP (For all subsequent starts) ---

# 7. Start the OpenHalo server in the background using pg_ctl
echo "7. Starting OpenHalo server in background..."    
pg_ctl -D "$PGDATA" -o "-c listen_addresses='*' -c port=5434" -l "$PGDATA/server.log" start

# Wait for OpenHalo server to be fully available (PostgreSQL port 5434)
# Nous attendons la base par défaut 'postgres', car 'openhalo' n'est pas créée.
until pg_isready -h localhost -p 5434 -U "$PGUSER" -d "$DBNAME_DEFAULT"; do
    echo "   (Waiting for OpenHalo server on localhost:5434...)"
    sleep 2
done

echo "8. OpenHalo server is operational."

# 9. Keep the container running by tailing the main log (PID 1)
echo "9. Keeping container alive (tail -f logs)..."
exec tail -f "$PGDATA/server.log"
