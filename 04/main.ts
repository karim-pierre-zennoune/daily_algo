interface Book{
    id: number;
    title: string;
    author: string;
    pages: number;
}


const books: Array<Book> = [
  { id: 1, title: "Le Petit Prince", author: "Saint-Exupéry", pages: 96 },
  { id: 2, title: "1984", author: "George Orwell", pages: 328 },
  { id: 3, title: "L'Alchimiste", author: "Paulo Coelho", pages: 208 },
];


function getBookTitles(books: Array<Book>, minPages?: number): Array<string>{

    if (minPages){
        return books.filter((book)=>{
            return book.pages >= minPages;
        }).map((book)=>{
                return book.title;
        });
    }

    return books.map((book)=>{
        return book.title;
    });

}

console.log("getBookTitles(books)");
console.log(getBookTitles(books));


console.log("getBookTitles(books,200)");
console.log(getBookTitles(books,200));