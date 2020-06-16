class DogsController < ApplicationController

    set :views, "app/views/dogs"

    # display list of all dogs
    get '/dogs' do
        @dogs = Dog.all
        erb :index
    end

    # display a dog
    get '/dogs/:id' do 
        @dog = Dog.find(params[:id])
        erb :show
    end 

end