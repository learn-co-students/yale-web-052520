class Image{

    constructor(caption, url){
        this.caption = caption
        this.url = url
    }

    render(){
        let p = document.createElement("p")
        p.innerText = this.caption

        let image = document.createElement("img")
        image.src = this.url

        // document.body.prepend(p,image)
        document.body.append(p,image)
        // return p
    }

}

// debugger

let imgForm = document.querySelector("form.new-form")

imgForm.addEventListener("submit", () => {
    event.preventDefault()

    let caption = event.target[0].value
    let url = event.target[1].value

    let img = new Image(caption, url)
    // console.log(img)
    img.render()
    // p = img.render()
})

class Person{
    constructor(name){
        this.name = name
    }
}

class Student extends Person{

    constructor(name, major){
        super(name)
        this.major = major
    }

    render(){
        let li = document.createElement("li")
        li.innerText = this.name + ": I am a student!!"

        return li
    }

}

class Teacher extends Person{
    render(){
        let li = document.createElement("li")
        li.innerText = this.name + ": I am a teacher!!"

        return li
    }
}

// debugger

let taskForm = document.querySelector("form.task-form")

taskForm.addEventListener("submit", () => {
    event.preventDefault()

    let name = event.target[0].value

    let li
    // debugger
    switch(event.target[1].value){
        case "Teacher":
            let t = new Teacher(name)
            li = t.render()
            break
        case "Student":
            let s = new Student(name)
            li = s.render()
            break
        default:
            console.log("Not a good choice!!")
    }

    document.body.append(li)
    event.target.reset()
    // taskForm.reset()
})