type Category = "food" | "tech" | "home";

interface Produits {
  id: number;
  name: string;
  price: number;
  category: Category;
}

const products: Array<Produits> = [
  { id: 1, name: "Pâtes bio", price: 2.5, category: "food" },
  { id: 2, name: "Aspirateur", price: 89.9, category: "home" },
  { id: 3, name: "Casque Bluetooth", price: 59.0, category: "tech" },
  { id: 4, name: "Céréales", price: 3.9, category: "food" },
];

function filterByCategory(
  arr: Array<Produits>,
  cat: Category
): Array<Produits> {
  return arr.filter((elem) => {
    return elem.category === cat;
  });
}

console.log(products);
console.log("filter by food");
console.log(filterByCategory(products, "food"));
console.log("filter by tech");
console.log(filterByCategory(products, "tech"));
console.log("filter by home");
console.log(filterByCategory(products, "home"));
