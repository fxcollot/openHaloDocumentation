#!/bin/bash
set -e

echo "=== Démarrage d'OpenHalo (PostgreSQL + compat MySQL) ==="

if [ ! -s "$PGDATA/PG_VERSION" ]; then
    echo "Initialisation de PostgreSQL..."
    initdb -D "$PGDATA"

    echo "Configuration de la compatibilité MySQL..."
    echo "database_compat_mode = 'mysql'"        >> $PGDATA/postgresql.conf
    echo "mysql.listener_on = true"             >> $PGDATA/postgresql.conf
    echo "mysql.port = 3306"                    >> $PGDATA/postgresql.conf
    echo "listen_addresses = '*'"               >> $PGDATA/postgresql.conf
    echo "port = 5432"                          >> $PGDATA/postgresql.conf

    echo "host all all all trust"               >> $PGDATA/pg_hba.conf
fi

echo "Démarrage du serveur PostgreSQL..."
pg_ctl -D "$PGDATA" -l "$PGDATA/logfile" start

# Attendre le démarrage
until pg_isready -h localhost -p 5432 -U halo; do
    echo "En attente de PostgreSQL..."
    sleep 2
done

echo "PostgreSQL est prêt."

# Garder le conteneur vivant
tail -f "$PGDATA/logfile"
