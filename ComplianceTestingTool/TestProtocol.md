# **Protocole de Tests**

## 1. Contexte et Objectifs
Ce protocole vise à évaluer la compatibilité fonctionnelle entre **MySQL**, **OpenHalo** (qui traduit les requêtes MySQL en PostgreSQL), et **PostgreSQL natif**. L’objectif est de vérifier que :
- Les requêtes MySQL, lorsqu’elles sont exécutées via OpenHalo, produisent des résultats identiques ou équivalents à ceux obtenus directement avec PostgreSQL.
- OpenHalo gère correctement les spécificités de MySQL (fonctions, syntaxe, types de données) et les traduit en requêtes PostgreSQL valides.
- Aucune donnée n’est corrompue ou perdue lors de la traduction ou de l’exécution.

Ce protocole se concentre sur la validation fonctionnelle et non sur les performances (qui seront traitées dans la Partie 3).

## 2. Environnement de Test
Pour garantir des tests fiables, l’environnement doit inclure :
- Trois instances de bases de données :
  - **MySQL** : pour exécuter les requêtes originales.
  - **OpenHalo** : pour traduire et exécuter les requêtes MySQL en PostgreSQL.
  - **PostgreSQL natif** : pour comparer les résultats obtenus via OpenHalo avec une exécution directe en PostgreSQL.
- Jeux de données identiques sur les trois systèmes de gestion de base de données, incluant :
  - Des tables avec des relations (clés primaires/étrangères, index, triggers).
  - Des types de données spécifiques : `ENUM`, `SET`, `JSON`, `BLOB`, etc.
  - Des données réalistes (si fournies par Clever Cloud) et des données artificielles pour couvrir les cas limites.
- Outils d’automatisation :
  - Scripts Python (avec `mysql-connector`, `psycopg2`) pour exécuter les requêtes et comparer les résultats.
  - Docker pour isoler les environnements et garantir la reproductibilité.

## 3. Catégories de Requêtes à Tester
Les requêtes doivent couvrir **tous les types d’opérations SQL** possibles. Voici une liste **générique** et **exhaustive** :

### 3.1. Requêtes de Sélection (SELECT)
- Sélection simple : `SELECT * FROM table WHERE condition;`
- Sélection avec jointures : `SELECT a.col1, b.col2 FROM table1 a JOIN table2 b ON a.id = b.table1_id WHERE condition;`
  - Tester : `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN` (si supporté).
- Sélection avec agrégats : `SELECT COUNT(*), AVG(column), SUM(column) FROM table GROUP BY column;`
- Sélection avec sous-requêtes : `SELECT * FROM table1 WHERE column IN (SELECT column FROM table2 WHERE condition);`

### 3.2. Requêtes de Modification (INSERT/UPDATE/DELETE)
- Insertion simple : `INSERT INTO table (col1, col2) VALUES (value1, value2);`
- Insertion multiple : `INSERT INTO table (col1, col2) VALUES (val1, val2), (val3, val4);`
- Mise à jour : `UPDATE table SET col1 = value1 WHERE condition;`
- Suppression : `DELETE FROM table WHERE condition;`

### 3.3. Requêtes Complexes
- Transactions : `BEGIN; [requêtes] COMMIT;` ou `ROLLBACK;`
- CTEs (Common Table Expressions) : `WITH cte_name AS (SELECT ...) SELECT * FROM cte_name;`
- Fonctions fenêtrées : `SELECT col1, ROW_NUMBER() OVER (PARTITION BY col2 ORDER BY col3) FROM table;`
- Opérations ensemblistes : `SELECT col FROM table1 UNION/INTERSECT/EXCEPT SELECT col FROM table2;`

### 3.4. Gestion des Erreurs
- Requêtes invalides : `SELECT * FROM non_existent_table;`
- Violations de contraintes : `INSERT INTO table (col_not_null) VALUES (NULL);`

## 4. Méthodologie de Validation

### 4.1. Exécution des Requêtes
Pour chaque requête du catalogue :
1. Exécuter sur MySQL et enregistrer le résultat (jeu de données retourné + métadonnées comme le nombre de lignes).
2. Traduire avec OpenHalo et exécuter sur PostgreSQL.
3. Exécuter directement sur PostgreSQL (si la requête est compatible nativement).
4. Comparer les résultats entre MySQL, OpenHalo, et PostgreSQL natif.

### 4.2. Critères de Validation
- Les résultats doivent être identiques :
  - Le jeu de données retourné par OpenHalo doit être strictement identique à celui de PostgreSQL natif.
  - Les résultats de MySQL doivent être logiquement équivalents (en tenant compte des différences de syntaxe, ex: `DATE_FORMAT` vs `TO_CHAR`).
- La gestion des erreurs doit être cohérente :
  - Les messages d’erreur doivent être clairs et cohérents entre les systèmes de gestion de base de données.
  - Les violations de contraintes doivent être détectées et signalées de la même manière.

### 4.3. Documentation des Écarts
Pour chaque écart identifié, documenter :
- La requête concernée (texte exact).
- Le résultat attendu (PostgreSQL natif).
- Le résultat obtenu (OpenHalo).
- L'analyse :
  - Cause probable (ex: traduction incorrecte d’une fonction MySQL).
  - Impact (ex: données manquantes, erreur de calcul).
  - Solution proposée (ex: réécrire la requête, ajuster la configuration d’OpenHalo).

## 5. Livrables
À la fin des tests, les livrables suivants doivent être fournis :
- Un rapport de compatibilité :
  - Tableau récapitulatif des requêtes testées (succès/échec).
  - Liste des écarts avec analyses et solutions.
- Un script d’automatisation (Python) :
  - Exécute les requêtes sur les trois SGBD.
  - Compare les résultats et génère un rapport.
- Les jeux de données utilisés (fichiers SQL/CSV).