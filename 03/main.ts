interface Product{
    id: number;
    name: String;
    price: number;
}

const products: Array<Product> = [
  { id: 1, name: "Pâtes bio", price: 2.5 },
  { id: 2, name: "Aspirateur", price: 89.9 },
  { id: 3, name: "Casque Bluetooth", price: 59.0 },
];

function findCheapestProduct(products: Array<Product>): Product | undefined{

    let cheapest: Product | undefined = products.pop();

    products.forEach(product => {
        if (cheapest){
            if(product.price < cheapest.price){
                cheapest = product;
            }
        }  
    });

    return cheapest;
}

console.log(findCheapestProduct(products))