class DogsController < ApplicationController

    before_action :current_dog, only: [:show, :edit, :update, :destroy]

    def index
        @dogs = Dog.all
    end

    def show
    end

    def new
        @dog = Dog.new
    end

    def create
        dog = Dog.new(dog_params)

        if dog.valid?
            dog.save
            redirect_to "/dogs/#{dog.id}"
        else
            # flash[:first] = "Hi!!!"
            byebug
            flash[:errors] = dog.errors.full_messages
            redirect_to "/dogs/new"
        end
    end

    def edit 
    end

    def update
        @dog.update(dog_params)
        redirect_to dog
    end

    def destroy
        # byebug
        @dog.destroy

        redirect_to "/dogs"
        # redirect_to dogs_path
    end

    def current_dog
        @dog = Dog.find(params[:id])
    end

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

end
