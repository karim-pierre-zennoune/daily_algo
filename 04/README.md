Écris une fonction getBookTitles() qui prend en paramètre un tableau de livres (Book[]) et retourne un nouveau tableau contenant uniquement les titres (title) des livres.

Exemple de tableau :
const books = [
  { id: 1, title: "Le Petit Prince", author: "Saint-Exupéry", pages: 96 },
  { id: 2, title: "1984", author: "George Orwell", pages: 328 },
  { id: 3, title: "L'Alchimiste", author: "Paulo Coelho", pages: 208 },
];

Voici le résultat attendu :
["Le Petit Prince", "1984", "L'Alchimiste"]


Bonus : Ajoute un paramètre optionnel minPages?: number qui, s'il est fourni, ne retourne que les titres des livres dont le nombre de pages est supérieur ou égal à cette valeur.

=> getBookTitles(books, 200);
["1984", "L'Alchimiste"]