// document.addEventListener("DOMContentLoaded", function(){
    let btn = document.querySelector("button#button1")

    btn.addEventListener("click", function(){
        console.log("07-07-2020!")
    })
// })

let form = document.querySelector("form#comment-form")

form.addEventListener("submit", function(){
    event.preventDefault() //to stop reloading
    // console.log("for the comment form!!")

    // debugger
    let p = document.createElement("p")
    p.innerText = document.querySelector("input#new-comment").value
    // p.innerText = event.taget[0].value

    let commentDiv = document.querySelector("div#comments-container")
    commentDiv.append(p)

    event.target.reset()
})

let btnDiv = document.querySelector("div#helicopter-parent")

btnDiv.addEventListener("click", function(){
    // debugger

    // if(event.target.dataset.name === "log"){
    //     console.log("Are you sure?")
    // }

    switch(event.target.dataset.name){
        case "alert":
            alert("are you sure?")
            break
        case "log":
            console.log("are you sure?")
            break
        case "error":
            console.error("are you sure?")
            break
        default:
            console.log("Clicked somewhere else!!!")
    }
})
