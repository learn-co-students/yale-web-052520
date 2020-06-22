class DogsController < ApplicationController

    before_action :current_dog, only: [:show, :edit, :update]

    def index
        @dogs = Dog.all
    end

    def show
        # @dog = Dog.find(params[:id])
    end

    def new
        @dog = Dog.new
    end

    def create
        # byebug
        dog = Dog.create(dog_params)

        redirect_to "/dogs/#{dog.id}"
        # redirect "/dogs/#{dog.id}" => not working

    end

    def edit 
        # byebug
        # @dog = Dog.find(params[:id])
    end

    def update
        # byebug

        # dog = Dog.find(params[:id])
        @dog.update(dog_params)

        # redirect_to "/dogs/#{dog.id}"

        # redirect_to dog
        # redirect_to dog_path(dog)
        redirect_to dog_path

    end

    def current_dog
        @dog = Dog.find(params[:id])
    end

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

end
