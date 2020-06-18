Book.destroy_all
Author.destroy_all
Citation.destroy_all


response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=ruby+programming")

books = JSON.parse(response)

books["items"].each do |book|
    Book.create(title: book["volumeInfo"]["title"], year: book["volumeInfo"]["publishedDate"])
end

Author.create(name: "DHH")
Author.create(name: "Andy")
Author.create(name: "Zed")

7.times do 
    Citation.create(author_id: Author.all.sample.id, book_id: Book.all.sample.id)
end