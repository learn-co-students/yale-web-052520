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
        toy = Toy.create(toys_params)
        redirect_to "/toys/#{toy.id}"
    end

   private 

    def toys_params
        params.require(:toy).permit(:name, :dog_id) #strong_params
    end

    
    def current_toy
        @toy = Toy.find(params[:id])
    end

end
