Author.destroy_all
Book.destroy_all


Author.create(name: "Jack", age:20, address: "CT")
Author.create(name: "Justin", age:20, address: "MI")
Author.create(name: "Drew", age:20, address: "CT")
Author.create(name: "Larissa", age:20, address: "CT")

Book.create(title: "Intro to ruby", year: 2009)
Book.create(title: "Intro to AR", year: 2012)

