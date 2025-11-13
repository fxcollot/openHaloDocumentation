# OpenHalo : Créer une base MySQL et la vérifier dans PostgreSQL

OpenHalo permet de **connecter un client MySQL à un serveur PostgreSQL**.  
Toutes les requêtes MySQL sont **traduites automatiquement** et les données sont stockées dans PostgreSQL.  

Voici le workflow complet.

---

## Créer une base MySQL via OpenHalo

Se connecter au client MySQL (port 3306) :

```bash
mysql -h 127.0.0.1 -P 3306 -u halo -p
```

Créer la base :
```sql
CREATE DATABASE testdb;
USE testdb;
```

Vérifier les bases et tables :
```sql
SHOW DATABASES;
SHOW TABLES;  -- devrait être vide
```

---
## Créer une table et insérer des données via MySQL

Créer une table users :
```sql
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);
```

Vérifier la table :
```sql
SHOW TABLES;
```

Insérer quelques lignes :
```sql
INSERT INTO users (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com');
```

Sélectionner les données pour vérifier :
```sql
SELECT * FROM users;
```
--- 
## Comprendre le mapping OpenHalo → PostgreSQL

La base MySQL testdb est automatiquement mappée à un schéma PostgreSQL appelé testdb.

La table users que tu viens de créer existe maintenant dans ce schéma PostgreSQL.

Même si tu es connecté via MySQL, les données sont réellement stockées dans PostgreSQL.
---

## Vérifier les données dans PostgreSQL

Se connecter à PostgreSQL (port 5432) :
```bash
psql -h 127.0.0.1 -p 5432 -U halo -d halo0root
```

Lister les schémas pour voir le mapping :
```sql
\dn
```

Tu devrais voir le schéma testdb.

Lister les tables dans ce schéma :
```sql
\dt testdb.*
```

Sélectionner les données :
```sql
SELECT * FROM testdb.users;
```

Résultat attendu :


```sql
 id |  name   |        email
----+---------+---------------------
 1  | Alice   | alice@example.com
 2  | Bob     | bob@example.com
 3  | Charlie | charlie@example.com
```

---

## Astuce : éviter de préfixer le schéma

Pour travailler directement sur le schéma sans le préfixer à chaque requête :

```sql
SET search_path TO testdb;
SELECT * FROM users;
```

users sera trouvé directement comme si tu étais dans MySQL.
---
## Résumé du fonctionnement

Tu écris du SQL MySQL côté client MySQL (port 3306).

OpenHalo traduit automatiquement la requête en PostgreSQL.

Les tables MySQL sont stockées dans un schéma PostgreSQL correspondant à la base MySQL.

Tu peux vérifier et interagir avec ces tables dans PostgreSQL via le schéma.
