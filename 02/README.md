Wake-Up Kata — findMovies()
Écris une fonction qui devra rechercher dans un tableau de films tous ceux dont le titre contient une chaîne de caractères donnée.

---

Étape 1 — Crée une interface Movie
Commence par définir une interface Movie qui décrira la structure d’un film.
Elle devra inclure les propriétés suivantes :

id : identifiant unique du film
title : titre du film
genre : genre principal
releaseYear : année de sortie
rating : note moyenne attribuée

---

Étape 2 — Crée la fonction findMovies()
Crée ensuite une fonction findMovies() qui :

prend en paramètre :

une chaîne de caractères (le terme à rechercher)

un tableau de films

retourne un nouveau tableau contenant uniquement les films dont le titre contient la chaîne recherchée, sans tenir compte de la casse.

Pense à typer tes paramètres et ta valeur de sortie 😉 

---

Bonus
Ajoute un troisième paramètre optionnel pour trier les résultats selon l’année de sortie :

"asc" → du plus ancien au plus récent
"desc" → du plus récent au plus ancien

Crée pour cela un type SortOrder qui ne peut accepter que ces deux valeurs.


const movies = [
  { id: 1, title: "Harry Potter and the Sorcerer's Stone", genre: "Fantasy", releaseYear: 2001, rating: 7.6, duration: 152 },
  { id: 2, title: "Harry Potter and the Deathly Hallows: Part 2", genre: "Fantasy", releaseYear: 2011, rating: 8.1, duration: 130 },
  { id: 3, title: "Dune", genre: "Science-Fiction", releaseYear: 2021, rating: 8.0, duration: 155 },
  { id: 4, title: "Dune: Part Two", genre: "Science-Fiction", releaseYear: 2024, rating: 8.6, duration: 166 },
  { id: 5, title: "Star Wars: A New Hope", genre: "Science-Fiction", releaseYear: 1977, rating: 8.6, duration: 121 },
  { id: 6, title: "Star Wars: The Empire Strikes Back", genre: "Science-Fiction", releaseYear: 1980, rating: 8.7, duration: 124 },
  { id: 7, title: "Star Wars: The Force Awakens", genre: "Science-Fiction", releaseYear: 2015, rating: 7.8, duration: 138 },
];