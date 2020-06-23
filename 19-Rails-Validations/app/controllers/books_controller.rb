class BooksController < ApplicationController

    before_action :current_book, only: [:show, :edit, :update]

    def index
        @books = Book.all
    end

    def show
    end

    def new
        @book = Book.new
        @authors = Author.all
    end

    def create
        # byebug
        book = Book.create(book_params)

        redirect_to "/books/#{book.id}"
    end

    def edit
        @authors = Author.all
    end

    def update
        # byebug
        @book.update(book_params)
        redirect_to @book
    end

    private

    def book_params
        params.require(:book).permit(:title, author_ids: [])
    end

    
    def current_book
        @book = Book.find(params[:id])
    end
end
