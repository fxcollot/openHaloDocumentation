#!/bin/bash
set -e

echo "=== Démarrage d'OpenHalo (PostgreSQL + compat MySQL) ==="

if [ ! -s "$PGDATA/PG_VERSION" ]; then
    echo "Initialisation de PostgreSQL..."
    initdb -D "$PGDATA"

    echo "Configuration de la compatibilité MySQL..."
    echo "database_compat_mode = 'mysql'"        >> $PGDATA/postgresql.conf
    echo "mysql.listener_on = true"             >> $PGDATA/postgresql.conf
    echo "mysql.port = 3308"                    >> $PGDATA/postgresql.conf
    echo "listen_addresses = '*'"               >> $PGDATA/postgresql.conf
    echo "port = 5434"                          >> $PGDATA/postgresql.conf
    echo "unix_socket_directories = '/tmp'" >> $PGDATA/postgresql.conf

    echo "host all all all trust"               >> $PGDATA/pg_hba.conf

    echo "Démarrage temporaire pour créer la base de données..."
    
    # Démarrer temporairement le serveur en arrière-plan
    pg_ctl -D "$PGDATA" -l "$PGDATA/temp_logfile" start
    
    # Attendre que le serveur soit prêt (connexion par défaut à template1)
    until pg_isready -h localhost -p 5434 -U $(whoami) -d template1; do
        echo "En attente de PostgreSQL (temp)..."
        sleep 1
    done

    # Exécuter les commandes SQL pour créer la DB et l'utilisateur
    # L'utilisateur de connexion est $(whoami) qui est 'halo'
    psql -h localhost -p 5434 -U $(whoami) -d template1 -c "CREATE DATABASE openhalo OWNER halo; ALTER USER halo WITH PASSWORD 'mysecret';"
    
    # Arrêter le serveur temporaire
    pg_ctl -D "$PGDATA" stop -m fast
    echo "Arrêt du serveur temporaire. DB 'openhalo' créée."
    # --- FIN DU NOUVEAU CODE AJOUTÉ ---
fi

echo "Démarrage du serveur PostgreSQL..."
pg_ctl -D "$PGDATA" -l "$PGDATA/logfile" start

# Attendre le démarrage du serveur (maintenant avec la DB 'openhalo' existante)
until pg_isready -h localhost -p 5434 -U halo -d openhalo; do
    echo "En attente de PostgreSQL..."
    sleep 2
done

echo "PostgreSQL est prêt."

# Garder le conteneur vivant
tail -f "$PGDATA/logfile"