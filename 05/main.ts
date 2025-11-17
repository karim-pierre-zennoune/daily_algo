interface CartItem{
    productId: number;
    name: string;
    unitPrice: number;
    quantity: number;
}

interface Product{
    id: number;
    name: string;
    price: number;
    stock: number;
}


const cart: CartItem[] = [
  { productId: 2, name: "Souris Sans Fil", unitPrice: 29.9, quantity: 1 }
];

const product: Product = {
  id: 1,
  name: "Casque Bluetooth",
  price: 59,
  stock: 5
};


function addToCart(cartItem: CartItem[], product: Product): void{
    if (product.stock === 0) return;

    let sameProduct: number = cartItem.findIndex((elem)=>  elem.productId === product.id);

    if (sameProduct != -1){
        //increment
        cartItem[sameProduct]!.quantity = cartItem[sameProduct]!.quantity + 1;
        
    }
    else{
        //add
        let newProduct: CartItem = {
            productId: product.id,
            name: product.name,
            unitPrice: product.price,
            quantity: 1
        };
        cartItem.push(newProduct);
    }
    return;

}