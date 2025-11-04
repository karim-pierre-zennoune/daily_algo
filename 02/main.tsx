interface Movie{
    id: number;
    title: string;
    genre: string;
    releaseYear: number;
    rating: number;
    duration: number;
}

type SortOrder = "asc" | "desc";

function findMovies(needle: string, haystack: Array<Movie>, order? : SortOrder): Array<Movie>{
    let filtered: Array<Movie> = [];

    filtered = haystack.filter((elem) => {
        return elem.title.toLowerCase().includes(needle.toLowerCase());
    });

    if(order != undefined)
    {
        if (order === "asc"){
            filtered.sort((a, b)=>{
                return a.releaseYear - b.releaseYear;
            })
        }
        else{
            filtered.sort((a, b)=>{
                return b.releaseYear - a.releaseYear;  
            })
    }}
    return filtered;
}

const movies: Array<Movie> = [
  { id: 1, title: "Harry Potter and the Sorcerer's Stone", genre: "Fantasy", releaseYear: 2001, rating: 7.6, duration: 152 },
  { id: 2, title: "Harry Potter and the Deathly Hallows: Part 2", genre: "Fantasy", releaseYear: 2011, rating: 8.1, duration: 130 },
  { id: 3, title: "Dune", genre: "Science-Fiction", releaseYear: 2021, rating: 8.0, duration: 155 },
  { id: 4, title: "Dune: Part Two", genre: "Science-Fiction", releaseYear: 2024, rating: 8.6, duration: 166 },
  { id: 5, title: "Star Wars: A New Hope", genre: "Science-Fiction", releaseYear: 1977, rating: 8.6, duration: 121 },
  { id: 6, title: "Star Wars: The Empire Strikes Back", genre: "Science-Fiction", releaseYear: 1980, rating: 8.7, duration: 124 },
  { id: 7, title: "Star Wars: The Force Awakens", genre: "Science-Fiction", releaseYear: 2015, rating: 7.8, duration: 138 },
];



console.log("full list");
console.log(movies);
console.log("search: HaRRy | asc");
console.log(findMovies("HaRRY", movies, "asc"));
console.log("search: HaRRy | desc");
console.log(findMovies("HaRRY", movies, "desc"));
console.log("search: wars | asc");
console.log(findMovies("wars", movies, "asc"));
console.log("search: wars | desc");
console.log(findMovies("wars", movies, "desc"));
console.log("search: wars | no sort");
console.log(findMovies("wars", movies));
