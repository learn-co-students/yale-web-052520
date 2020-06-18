class BooksController < ApplicationController
    set :views, "app/views/books"

    # display list of all the books
    get '/books' do
        # @temp = "Vidhi"
        @books = Book.all
        # binding.pry
        erb :index
    end

    # Form for creating a book
    get '/books/new' do 
        @authors = Author.all
        erb :new
    end

    # display single book info
    get '/books/:id' do 
        # binding.pry
        @book = find_book(params)
        erb :show
    end

    # create a book
    post '/books' do
        # binding.pry
        book = Book.create(params[:book])

        params[:authors][:id].each do |author_id|
            # Citation.create(book_id: book.id, author_id: author_id)

            book.authors << Author.find(author_id)
        end

        # params[:authors][:names].delete("")

        # if params[:authors][:names].length > 0

        #     params[:authors][:names].each do |author_name|
        #         book.authors << Author.create(name: author_name)
        #     end
        # end 

        params[:authors][:names].each do |author_name|
            unless author_name.empty?
                book.authors << Author.create(name: author_name)
            end
        end

        redirect "/books/#{book.id}"
    end

    delete '/books/:id' do 
        # binding.pry
        book = find_book(params)
        book.destroy

        # Book.delete(params[:id])

        redirect "/books"
    end

    def find_book(params)
        Book.find(params[:id])
    end
    

end