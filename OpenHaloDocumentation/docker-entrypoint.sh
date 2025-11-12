#!/bin/bash
set -e

# Initialiser la base PostgreSQL si elle n'existe pas encore
if [ ! -d "$PGDATA/base" ]; then
  echo "Initializing PostgreSQL data directory..."
  initdb -D "$PGDATA"
  echo "listen_addresses='*'" >> "$PGDATA/postgresql.conf"
  echo "port=5432" >> "$PGDATA/postgresql.conf"
  echo "database_compat_mode='mysql'" >> "$PGDATA/postgresql.conf"
  echo "mysql.listener_on=true" >> "$PGDATA/postgresql.conf"
  echo "mysql.port=3306" >> "$PGDATA/postgresql.conf"
fi

# Démarrer PostgreSQL au foreground
pg_ctl -D "$PGDATA" -o "-c config_file=$PGDATA/postgresql.conf" start

# Démarrer un shell ou commande passée en argument
exec "$@"
