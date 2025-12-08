# Challenge SQL - Créer la base de données d’une plateforme de films à partir d'une modélisation de base de données

## Objectifs
Au cours de ce challenge, tu vas :
- Partir d’un **M**odèle **P**hysique de **D**onnées
- Écrire les `CREATE TABLE` avec clés primaires et étrangères
- Mettre en place :
   - une relation **many-to-one** (`Movie` → `Genre`)
   - une relation **many-to-many** (`User` ↔ `Movie` via la `watchlist`)
 - Insérer quelques données de test
 - Écrire des requêtes `SELECT` pour exploiter ces relations
- Tester l’impact des `ON DELETE CASCADE` / `SET NULL`

## Modèle de données à respecter
On veut modéliser une petite plateforme type “Netflix”.

### Entité User (table `app_user`)
Champs :
- `id` : entier, clé primaire
- `firstname` : texte (50)
- `lastname` : texte (50)
- `email` : texte (150), unique
- `created_at` : date et heure de création du compte

Un utilisateur peut ajouter plusieurs films à sa **watchlist**.

### Entité Genre (table `genre`)
Champs :
- `id` : entier, clé primaire
- `name` : texte (100), unique
- `description` : texte (facultatif)
Un genre peut regrouper **plusieurs films**.

### Entité Movie (table `movie`)
Champs :
- `id` : entier, clé primaire
- `title` : texte (150)
- `release_year` : entier (année de sortie)
- `duration_min` : entier (durée en minutes)
- `genre_id` : entier, clé étrangère vers genre(id)
- `rating` : nombre décimal (note moyenne sur 10, par exemple 7.5)

#### Relation many-to-one :
**Un genre peut avoir plusieurs films**,
**un film appartient à un seul genre**.

### Table de jointure Watchlist (table `watchlist`)
**Un utilisateur peut avoir plusieurs films dans sa watchlist**, et **un film peut être dans la watchlist de plusieurs utilisateurs**.
Champs :
- `user_id` : entier, clé étrangère vers `app_user(id)`
- `movie_id` : entier, clé étrangère vers `movie(id)`
- `added_at` : date et heure d’ajout dans la watchlist
- Clé primaire composée (`user_id`, `movie_id`) pour éviter des doublons



## Consignes
1. Crée une base de données, par exemple `netflux`, et sélectionne-la avec `USE`.
2. Écris les requêtes `CREATE TABLE` pour :
- `app_user`
- `genre`
- `movie`
- `watchlist`

### Contraintes :
- Chaque table a une `PRIMARY KEY`.
- `email` dans `app_user` est `UNIQUE`.
- `watchlist` :
   - clé primaire composée (user_id, movie_id)
   - deux clés étrangères : `user_id` → app_user(id) et `movie_id` → movie(id)
   - les deux clés étrangères doivent utiliser `ON DELETE CASCADE`.
- Pour `movie.genre_id`, tu dois choisir entre :
   - `ON DELETE CASCADE`
   - ou `ON DELETE SET NULL`
- Justifie ton choix

3. Insère des données pour pouvoir tester tes requêtes.
- Dans `app_user`, insère au moins 3 utilisateurs (par exemple : Alice, Bob, Charlie avec des emails différents).
- Dans `genre`, insère au moins 4 genres, par exemple Action, Comédie, Science-Fiction, Drame
- Dans `movie`, insère au moins 6 films avec des genres, années de sortie et les notes différents
- Dans `watchlist`, insère au moins 8 entrées :
   - Un même utilisateur doit avoir plusieurs films.
   - Un même film doit apparaître dans la watchlist de plusieurs utilisateurs.
  
4- Requêtes SQL à écrire
Écris les requêtes suivantes :
- Récupérer tous les films avec :
   - leur titre,
   - leur année de sortie,
   - le nom du genre.
- Récupérer la watchlist complète d’un utilisateur donné (par exemple l’utilisateur avec id = 1) :
   - prénom, nom de l’utilisateur
   - titre du film
   - nom du genre
   - date d’ajout dans la watchlist
- Lister tous les genres avec le nombre de films par genre, trié du plus représenté au moins représenté.
- Récupérer les films dont la note (`rating`) est supérieure ou égale à 8, avec :
   - titre
   - genre
   - année de sortie
- Récupérer tous les films présents dans la watchlist d’au moins 2 utilisateurs différents.

5- Tester les cascades
- Supprime un utilisateur de la table `app_user` : vérifie ce qu’il se passe dans la table `watchlist` et constate l’effet de `ON DELETE CASCADE`.
- Supprime un genre de la table `genre` : observe ce qu’il se passe dans la table `movie` (en fonction de ton choix : `CASCADE` ou `SET NULL`).
Pourquoi cette règle de suppression est-elle importante dans une vraie application ?