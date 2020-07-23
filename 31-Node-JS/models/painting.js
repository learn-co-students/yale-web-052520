const Sequelize = require('sequelize')

// const String = Sequelize.STRING
const {STRING, INTEGER} = Sequelize

const seq = new Sequelize({
    dialect: 'sqlite', //database
    storage: "./database.sqlite" //file name for database
})

const Painting = seq.define("paintings", {
    title: {
        type: STRING
    },
    artist: {
        type: STRING
    },
    url: {
        type: STRING
    }
})

module.exports = Painting
seq.sync()
