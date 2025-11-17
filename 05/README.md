Wake-Up Kata — addToCart()
Écris une fonction addToCart() qui prend en paramètre un tableau de produits (CartItem[])  et un produit (Product).
La fonction doit : 
Si le produit est déjà présent dans le panier (même id), incrémenter sa quantité de 1.
Sinon, ajouter un nouvel objet dans le panier, avec une quantité de 1.

Exemple de données :
const cart: CartItem[] = [
  { productId: 2, name: "Souris Sans Fil", unitPrice: 29.9, quantity: 1 }
];

const product: Product = {
  id: 1,
  name: "Casque Bluetooth",
  price: 59,
  stock: 5
};

🏅 Bonus
Empêcher d’ajouter plus d’unités que ce que le stock permet : si quantity atteint product.stock, ne plus rien ajouter.