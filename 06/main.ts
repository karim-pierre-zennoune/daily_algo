interface CartItem {
  productId: number;
  name: string;
  unitPrice: number;  // prix unitaire
  quantity: number;   // quantité dans le panier
}


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



const empty: CartItem[] = [

];


const cheap: CartItem[] = [
  {
    productId: 2,
    name: "Souris Sans Fil",
    unitPrice: 29.9,
    quantity: 1
  }
];




function getCartTotal(cart: CartItem[]): string{
    let total: number = 0;

    cart.forEach((item :CartItem)=>{
        total += item.quantity * item.unitPrice;
    });

    total = Math.round(total * 100)/100;


    if(total === 0){
        return "Votre panier est vide.";
    }
    else if(total < 50){
        return "Total : " + total + " € — Merci pour votre achay";
    }
    else{
        return "Total : " +total+ " € — Livraison offerte";
    }

}
console.log(getCartTotal(cart));
console.log(getCartTotal(empty));
console.log(getCartTotal(cheap));