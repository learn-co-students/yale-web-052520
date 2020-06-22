class BooksController < ApplicationController

    before_action :current_book, only: [:show]

    def index
        @books = Book.all
    end

    def show
    end

    
    def current_book
        @book = Book.find(params[:id])
    end
end
