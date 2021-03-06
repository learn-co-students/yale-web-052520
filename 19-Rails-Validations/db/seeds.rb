# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.destroy_all
Toy.destroy_all
Book.destroy_all
Author.destroy_all
Citation.destroy_all

Dog.create(name: "Richi", breed:"Pug", age: 11)
Dog.create(name: "Roxy", breed:"Corgi", age: 5)
Dog.create(name: "Bozo", breed:"mix", age: 7)

Toy.create(name: "Blue bear", dog: Dog.all.sample)
Toy.create(name: "Pink Squirrel", dog: Dog.all.sample)

Author.create(name: "DHH")
Author.create(name: "Andy Hunt")
Author.create(name: "Dave Thomas")

Book.create(title: "Object Oriented")
Book.create(title: "Ruby designs")

Citation.create(author: Author.first, book: Book.first)
Citation.create(author: Author.second, book: Book.first)
Citation.create(author: Author.third, book: Book.first)
Citation.create(author: Author.first, book: Book.second)
Citation.create(author: Author.last, book: Book.second)





