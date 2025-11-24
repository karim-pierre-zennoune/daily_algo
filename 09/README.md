Wake-Up Kata — findLowStockItems()
Écris une fonction findLowStockItems() en TypeScript qui retourne tous les articles dont le stock est faible.

La fonction prend en paramètres :
un tableau Item[]
une limit de type  number

La fonction doit :
retourner un nouveau tableau contenant uniquement les produit dont la quantité est inférieure à la limite.

const inventory: Item[] = [
  { id: 1, name: "Clavier mécanique", quantity: 12 },
  { id: 2, name: "Casque audio", quantity: 7 },
  { id: 3, name: "Souris sans fil", quantity: 25 },
];


🏅
 Bonus
Retourne un message "Rien à signaler" si aucun article n’est en rupture imminente.
Tri le résultat du plus faible stock au plus élevé.