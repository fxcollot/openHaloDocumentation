#!/bin/bash
set -e

echo "=== Démarrage d'OpenHalo (PostgreSQL + compat MySQL) ==="

# 1. Vérification de l'initialisation
if [ ! -f "$PGDATA/PG_VERSION" ]; then
    echo "Initialisation de PostgreSQL..."
    
    # Assurez-vous que le répertoire est vide AVANT initdb (pour éviter l'erreur)
    # Ceci n'est nécessaire que si les étapes précédentes ont échoué
    # rm -rf "$PGDATA/*" 

    initdb -D "$PGDATA" -U halo # Ajout de l'utilisateur pour être plus clair

    echo "Configuration de la compatibilité MySQL..."
    echo "database_compat_mode = 'mysql'"        >> $PGDATA/postgresql.conf
    echo "mysql.listener_on = true"             >> $PGDATA/postgresql.conf
    echo "mysql.port = 3306"                    >> $PGDATA/postgresql.conf
    echo "listen_addresses = '*'"               >> $PGDATA/postgresql.conf
    echo "port = 5432"                          >> $PGDATA/postgresql.conf

    # Créer un utilisateur et un mot de passe si initdb n'utilise pas -U halo
    # Cette étape est souvent contournée par la configuration TRUST dans pg_hba.conf ci-dessous.
    
    # Configuration pg_hba.conf pour permettre la connexion
    echo "host all all all trust"               >> $PGDATA/pg_hba.conf
fi

# 2. Démarrage du serveur en arrière-plan et vérification
echo "Démarrage du serveur PostgreSQL..."
pg_ctl -D "$PGDATA" -l "$PGDATA/logfile" start

# 3. Attendre le démarrage et rester en avant-plan (Foreground)
until pg_isready -h localhost -p 5432 -U halo; do
    echo "En attente de PostgreSQL..."
    sleep 2
done

echo "PostgreSQL est prêt. Démarrage en avant-plan."

# Arrêter l'instance en arrière-plan démarrée précédemment
pg_ctl -D "$PGDATA" stop || true


# Redémarrer l'instance en arrière-plan
pg_ctl -D "$PGDATA" -l "$PGDATA/logfile" start 

# Attendre encore une fois que la DB soit prête
until pg_isready -h localhost -p 5432 -U halo; do
    sleep 1
done

echo "OpenHalo est prêt et écoute."

# Garder le conteneur vivant en surveillant le log
exec tail -f "$PGDATA/logfile" 
# L'utilisation de 'exec' ici assure que le script ne se termine pas
# tant que tail est en cours, et que l'arrêt de Docker tue aussi tail.
