console.log("Hello World!!")

let min = 20
min = 25

const max = 50 // max value is constant

// con
// sole
// .
// l
// o
// g(
//     "MONDAY!!!!!"
//     )

// console
// .log
// ("Monday!!")

let h1 = document.querySelector("h1")
h1.innerText = "Happy Monday!!"


//task-1:

let h4 = document.querySelector("h4")
h4.innerText = "Vidhi"

let pTag = document.querySelector("p")
pTag.setAttribute("style", "color: green; font-size: 12px")
pTag.style = "color: green; font-size: 12px"


let newPTag = document.createElement("p")
newPTag = "Just Created"

let div = document.querySelector("div")
div.append(newPTag)

div.innerHTML = "<p> Yale-summer-2020 </p>"

//task-2:

let image = document.createElement("img")
image.src = "giphy.gif"
// image.setAttribute("src", "giphy.gif")
document.body.append(image)

//different way to grab a particular element:

// let pTags = document.querySelectorAll("p") //array of all the p tags
// let finalP = pTags[2]

// let finalP = document.getElementById("change")

// let finalP = document.getElementsByClassName("name")[0] //getElementsByClassName returns an array

// let finalP = document.querySelector(".name")
// let finalP = document.querySelector("p.name")

// let finalP = document.querySelector("p#change")
let finalP = document.querySelector("p#change")
finalP.innerText = "We Love Food!"


