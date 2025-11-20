interface Response{
    success: boolean;
    message: string;
}


interface Item{
    id: number;
    price: number;
    name: string;
    quantity: number;
}


type maybeItem = Item | undefined;


function updateItemDetails(inventory: Item[], itemId: number, update: Partial<Item>): Response{

    if(update.price && update.price  < 0){
        return { success: false, message: "Le nouveau prix ne peut etre negatif"}
    }

    if(update.quantity && update.quantity  < 0){
        return { success: false, message: "La nouvelle quantite ne peut etre negative"}
    }

    let index: number = inventory.findIndex((elem)=> elem.id === itemId);

    if (index == -1){
        return {success: false, message: "Article introuvable."}
    }

    inventory[index] = {...inventory[index]!, ...update};

    return {success: true, message: "Article mis à jour avec succès."};
}

const inventory: Item[] = [
  { id: 1, name: "Clavier mécanique", quantity: 12, price: 89.99 },
  { id: 2, name: "Casque audio", quantity: 7, price: 59 },
  { id: 3, name: "Souris sans fil", quantity: 25, price: 29.9 },
];



console.log(updateItemDetails(inventory, 19, {name: "coucou"}));
console.log(updateItemDetails(inventory, 1, {name: "coucou", price: -50}));
console.log(updateItemDetails(inventory, 1, {name: "coucou", quantity: 0}));
console.log(updateItemDetails(inventory, 1, {name: "coucou", price: 88888}));
console.log(inventory);