class ApplicationController < Sinatra::Base

    set :views, "app/views"
    set :method_override, true

    get '/' do
        "Hello World"
    end

    # Create route for /home that displays “Hi!!!”
    get '/home' do 
        erb :home
    end

    # display list of all the books
    get '/books' do
        # @temp = "Vidhi"
        @books = Book.all
        # binding.pry
        erb :index
    end

    # Form for creating a book
    get '/books/new' do 
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
        book = Book.create(params)
        redirect "/books/#{book.id}"
    end

    # form for updating a book
    get '/books/:id/edit' do
        @book = find_book(params)
        erb :edit
    end

    # update a book
    patch '/books/:id' do
        # binding.pry
        book = find_book(params)
        book.update(title: params[:title], year:params[:year])

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
