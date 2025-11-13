#!/bin/bash
set -e

# Démarrer PostgreSQL s’il n’est pas déjà lancé
if [ ! -s "$PGDATA/PG_VERSION" ]; then
    echo "Initialisation de la base de données..."
    initdb -D "$PGDATA"
fi

echo "Démarrage du serveur PostgreSQL..."
pg_ctl -D "$PGDATA" -l "$PGDATA/logfile" start

# Attendre que le serveur soit prêt
until pg_isready -h localhost -p 5432 -U halo; do
  echo "En attente du démarrage de PostgreSQL..."
  sleep 2
done

echo "PostgreSQL est prêt."

# Laisser le conteneur actif (sinon il s'arrête)
tail -f "$PGDATA/logfile"
