class DogsController < ApplicationController

    # Sinatra
    # get '/dogs' do 

    # end

    def index
        # byebug
        @dogs = Dog.all
        # render :dogs
    end

    def show
        # byebug
        @dog = Dog.find(params[:id])
    end
end
