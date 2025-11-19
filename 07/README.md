 Wake-Up Kata — updateQuantity()
Écris une fonction updateQuantity() en TypeScript qui permet de mettre à jour la quantité d'un article dans un inventaire.
La fonction prend en paramètre un tableau inventory de type Item[],  un itemId de type number et newQuantity de type number.

La fonction doit modifier directement le tableau inventory.

La fonction doit retourner un objet avec une propriété success de type boolean.
Si newQuantity est négatif ou si l’article n’existe pas dans l’inventaire,success doit être à false et message explicite (ex: "La quantité ne peut pas être négative." ou "Article introuvable.").
Sinon, mets à jour la quantité dans l’inventaire et retourne success à true, et message explicite (exemple: "Quantité mise à jour avec succès." )

Exemple de données :
const inventory: Item[] = [
  { id: 1, name: "Clavier mécanique", quantity: 12 },
  { id: 2, name: "Casque audio", quantity: 7 },
  { id: 3, name: "Souris sans fil", quantity: 25 },
];