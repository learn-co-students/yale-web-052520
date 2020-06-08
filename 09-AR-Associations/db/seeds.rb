Author.destroy_all
Book.destroy_all

Bakery.destroy_all
Customer.destroy_all
Review.destroy_all


a1 = Author.create(name: "Jack", age:20, address: "CT")
Author.create(name: "Justin", age:20, address: "MI")
Author.create(name: "Drew", age:20, address: "CT")
Author.create(name: "Larissa", age:20, address: "CT")

Book.create(title: "Intro to ruby", year: 2009, author_id: a1.id)
# Book.create(title: "Intro to ruby", year: 2009, author: a1)
Book.create(title: "Intro to AR", year: 2012, author_id: Author.all.sample.id)



b1 = Bakery.create(name: "85 C")
b2 = Bakery.create(name: "Crispy Cream")
b3 = Bakery.create(name: "Red Velvet")


c1 = Customer.create(userName: "Vidhi03")
c2 = Customer.create(userName: "Lindsay")

Review.create(content: "great food", customer_id: c1.id, bakery_id: b1.id)
Review.create(content: "nice food", customer_id: c2.id, bakery_id: b1.id)
Review.create(content: "awesome food", customer_id: c1.id, bakery_id: b2.id)
Review.create(content: "not so good", customer_id: c2.id, bakery_id: b3.id)





