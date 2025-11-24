interface Item{
    id: number,
    name: string,
    quantity: number
}


function findLowStockItems(stock: Item[], limit: number, sort: boolean = false): Item[] | string {

    let filtered: Item[] = stock.filter((elem)=> elem.quantity < limit );

    if (filtered.length ===  0) return "Rien a signaler";

    if (sort){
        return filtered.sort((a,b) => a.quantity - b.quantity );
    }
    return filtered;

}

const inventory: Item[] = [
  { id: 1, name: "Clavier mécanique", quantity: 12 },
  { id: 2, name: "Casque audio", quantity: 7 },
  { id: 3, name: "Souris sans fil", quantity: 25 },
];

console.log(findLowStockItems(inventory,10))
console.log(findLowStockItems(inventory,50))
console.log(findLowStockItems(inventory,20, true))
console.log(findLowStockItems(inventory,20))
console.log(findLowStockItems(inventory,2))
