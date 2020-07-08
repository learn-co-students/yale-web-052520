// console.log(books)

function addBook(book){
  // <div class = 'card'>
	// 		 <img src = 'https://images-na.ssl-images-amazon.com/images/I/31AYTZWPCPL._SX309_BO1,204,203,200_.jpg'/>
	// 		 <h3>Soul Kiss</h3>
	// 		 <p>Shay Youngblood</p>
  // 	</div>
  
  const div = document.createElement("div")
  div.className = "card"

  const img = document.createElement("img")
  img.src = book.img

  const h3 = document.createElement("h3")
  h3.innerText = book.title

  const p = document.createElement("p")
  p.innerText = book.author

  div.append(img, h3, p)

  const book_div = document.querySelector("div#book-list") 

  book_div.append(div)
}

function showBooks(books){
  // books.forEach(function(book){
  //   console.log(book)
  // })
  books.forEach(book => {
    addBook(book)
  })
}

// showBooks(books)

// fetch("http://localhost:3000/books")
// .then(res => { return res.json() })
// .then(books => showBooks(books))
// .catch(error => console.log(error))

async function getBooks(){

  let response = await fetch("http://localhost:3000/books")
  let books = await response.json()
  // console.log(books)
  showBooks(books)

  // Not recommended using fetch inside async
  // fetch("http://localhost:3000/books")
  // .then(res => { return res.json() })
  // .then(books => showBooks(books))
  // .catch(error => console.log(error))
}

getBooks()

// let a = await Math.random()

console.log("I am not from the fetch!!")

// .then(function(res){
//   return res.json()
// })
// .then((data) => console.log("data"))

// function printName(name){
//   console.log(name)
// }

// printName = (name) => {
//   console.log(name)
//   let a = 10
//   let b = 20
//   let sum = a + b
//   console.log(sum)
//   return sum
// }


// printName("Vidhi")
