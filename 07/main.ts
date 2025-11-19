interface Item{
    id: number;
    name: string;
    quantity: number;
}

interface Response{
    success: boolean;
    message: string;
}

type maybeItem = Item | undefined;

function updateQuantity(inventory: Item[], itemId: number, newQuantity: number): Response{

    if (newQuantity < 0){
        return {
            success: false,
            message: "La quantité ne peut pas être négative."
        }   
    }

    let item: maybeItem =  inventory.find((elem)=> elem.id === itemId );

    if(!item){
        return {
            success: false,
            message: "Article introuvable."
        }   
    }

    item.quantity = newQuantity;

    return {
        success: true,
        message:"Quantité mise à jour avec succès. Nouvelle quantité = " + newQuantity
    }
}

const inventory: Item[] = [
  { id: 1, name: "Clavier mécanique", quantity: 12 },
  { id: 2, name: "Casque audio", quantity: 7 },
  { id: 3, name: "Souris sans fil", quantity: 25 },
];

console.log(updateQuantity(inventory, 5, 5));
console.log(updateQuantity(inventory, 1, -3));
console.log(updateQuantity(inventory, 1, 5));