class ApplicationController < Sinatra::Base

    set :views, "app/views"

    get '/' do
        "Hello World"
    end

    get '/home' do
       erb :home
    end

    # display list of all books
    get '/books' do
        # @name = "Vidhi"

        @books = Book.all
        erb :index
    end

    # display a single book
    get '/books/:id' do
        # binding.pry
        @book = Book.find(params[:id])
        erb :show
    end


end
