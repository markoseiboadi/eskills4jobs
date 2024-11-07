let books = [];

function addBook(title, author, yearPublished) {
    const newBook = {
        title: title,
        author: author,
        yearPublished: yearPublished
    };
    books.push(newBook);
}

//function to list all books
function listBooks() {
    for (let i = 0; i < books.length; i++) {
        const book = books [i];
        console.log('Title: {book.title}');
        console.log('Author: {book.author}');
        console.log('Year Published: {yearPublished}');
    }
}

//add specified books

addBook ("Sweet Apple",  "Osei Boadi", 2019);
addBook ("Banana Cidar",  "John Mark", 2015);
addBook ("Monkey Pie",  "Kumi", 2023);
