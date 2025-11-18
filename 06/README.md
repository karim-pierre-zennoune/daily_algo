Wake-Up Kata — getCartTotal()
Écris une fonction getCartTotal() en TypeScript qui prend en paramètre un tableau CartItem[] et retourne le prix total du panier.

interface CartItem {
  productId: number;
  name: string;
  unitPrice: number;  // prix unitaire
  quantity: number;   // quantité dans le panier
}

Le total doit être calculé en additionnant unitPrice * quantity pour chaque élément du panier.

🏅 Bonus
1- Arrondis le total à 2 décimales
2- Retourne un message différent selon le montant :
total = 0 → "Votre panier est vide."
total < 50 → "Total : X € — Merci pour votre achay"
total ≥ 50 → "Total : X € — Livraison offerte"

Exemple de panier :

const cart: CartItem[] = [
  {
    productId: 1,
    name: "Casque Bluetooth",
    unitPrice: 59,
    quantity: 1
  },
  {
    productId: 2,
    name: "Souris Sans Fil",
    unitPrice: 29.9,
    quantity: 2
  },
  {
    productId: 3,
    name: "Clavier Mécanique RGB",
    unitPrice: 89.99,
    quantity: 1
  },
  {
    productId: 4,
    name: "Tapis de Souris XL",
    unitPrice: 19.5,
    quantity: 3
  },
  {
    productId: 5,
    name: "Écran 27 pouces",
    unitPrice: 249,
    quantity: 1
  }
];
