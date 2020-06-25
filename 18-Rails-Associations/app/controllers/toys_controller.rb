class ToysController < ApplicationController
    before_action :current_toy, only: [:show]

    def index
        @toys = Toy.all
    end

    def show
    end

    def new
        @toy = Toy.new
        @dogs = Dog.all
        @dog = Dog.new
    end

    def create
        # byebug

        toy = Toy.new(toys_params)

        #check if user is writting dog's name or not
        unless params[:toy][:dog][:name].empty? 
            dog = Dog.create(dogs_params) # calling strongs params
            
            toy.dog_id = dog.id
        end

        toy.save
        redirect_to "/toys/#{toy.id}"
    end

   private 

    def toys_params
        params.require(:toy).permit(:name, :dog_id) #strong_params
    end

    def dogs_params
        #strong_params for params[:toy][:dog][:name]
        params.require(:toy).permit({:dog => [:name]})[:dog]
    end

    
    def current_toy
        @toy = Toy.find(params[:id])
    end

end
