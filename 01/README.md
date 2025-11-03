Wake-up Kata – Filtrer des produits par catégorie
Consigne
Tu dois créer une fonction qui prend en paramètre :
un tableau de produits ;
une catégorie de produit.

Les catégories possibles sont uniquement : "food", "tech", "home"

À faire
Crée une fonction filterByCategory qui :
prend en paramètres un tableau de Product et une Category,
retourne un nouveau tableau contenant uniquement les produits appartenant à cette catégorie.

Tu peux tester ta fonction avec ces données

```ts
const products = [
  { id: 1, name: "Pâtes bio", price: 2.5, category: "food" },
  { id: 2, name: "Aspirateur", price: 89.9, category: "home" },
  { id: 3, name: "Casque Bluetooth", price: 59.0, category: "tech" },
  { id: 4, name: "Céréales", price: 3.9, category: "food" },
];
```
