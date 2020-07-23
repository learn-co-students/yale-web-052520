const express = require('express')
const Painting = require("./models/painting")
const pry = require("pryjs")
const bodyParser = require("body-parser")
const cors = require("cors")

// const app = require('express')()
const app = express()
app.use(bodyParser.json()) //take body key of the request
app.use(cors())

// Painting.hasOne(Artist)
// Artist.hasMany(Painting)


const port = 8000
app.listen(port, () => console.log("I am listening at "+ port))

app.get("/home", (req,res) => {
    res.json("HI!!!!")
})

// app.get("/paintings",(req,res) => {
//     // let paintings = Painting.findAll()
//     Painting.findAll()
//     .then(paintings => res.json(paintings))
    
// })

// All paintings
app.get("/paintings",async (req,res) => {
    let paintings = await Painting.findAll()
    res.json(paintings)
})

// Single painting
app.get("/paintings/:id", async(req,res) => {
    // eval(pry.it)
    painting = await Painting.findByPk(req.params.id)
    res.json(painting)
})

// create a new painting
app.post("/paintings", async(req,res) => {
    // eval(pry.it)
    let painting = await Painting.create(req.body)
    res.json(painting)
})

// update a painting
app.patch("/paintings/:id", async(req,res) => {
    let painting = await Painting.findByPk(req.params.id)
    await painting.update(req.body)
    res.json(painting)
})

// delete a painting
app.delete("/paintings/:id", async (req,res) => {
    let painting = await Painting.findByPk(req.params.id)
    await painting.destroy()
    res.json("DELETED!!!")
})