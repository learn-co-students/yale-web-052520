function qs(selector){
  return document.querySelector(selector)
}

function ce(element){
  return document.createElement(element)
}

const url =  "http://localhost:3000/books/"

// Append single book on DOM
function addBook(book){
  
  const div = document.createElement("div")
  div.className = "card"

  const img = document.createElement("img")
  img.src = book.img

  const h3 = document.createElement("h3")
  h3.innerText = book.title

  const p = document.createElement("p")
  p.innerText = book.author

  // button for read/unread a book
  const btn = ce("button")
  if(book.read){
    btn.innerText = "Mark Unread"
  }
  else{
    btn.innerText = "Mark Read"
  }

  // read/unread a book => patch 
  btn.addEventListener("click", () => {
    // `http://localhost:3000/books/${book.id}`
    // "http://localhost:3000/books/"+book.id

    const configObj = {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        read: !book.read
      })
    }

    fetch(url+book.id, configObj)
    .then(res => res.json())
    .then(updatedBook => {
      book = updatedBook // this will update the previous book obj with updated book obj
      updatedBook.read ? btn.innerText = "Mark Unread" : btn.innerText = "Mark Read"
    })
  })

  // Delete a book
  const delBtn = ce("button")
  delBtn.innerText = "DELETE Book"

  delBtn.addEventListener("click", () => {

    fetch(url+book.id, {
      method: "DELETE"
    })
    .then(() => div.remove())
  })


  div.append(img, h3, p, btn, delBtn)

  const book_div = document.querySelector("div#book-list") 

  book_div.append(div)
}

// Iterating over an array
function showBooks(books){
  books.forEach(book => {
    addBook(book)
  })
}

// fetching books
function getBooks(){
  fetch(url)
  .then(res => res.json())
  .then(books => showBooks(books))
  .catch(error => console.log(error))
}

getBooks()

// create a new book

const bookForm = qs("form#new-book")

bookForm.addEventListener("submit", (e) => {
  // debugger

  // event.preventDefault()
  e.preventDefault()


  const title = qs("input#book-title").value
  const author = qs("input#book-author").value
  const cover = qs("input#book-cover").value

  // console.log(title,author,cover)

  let configObj = {
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      title, // title: title // title: qs("input#book-title").value
      author,
      img: cover,
      read: false
    })
  }

  fetch(url, configObj)
  .then(res => res.json())
  .then(newBook => {
    addBook(newBook)
    bookForm.reset() //pessimistic rendering
  })

  // bookForm.reset() //optimistic rendering

})

// console.log(bookForm)
