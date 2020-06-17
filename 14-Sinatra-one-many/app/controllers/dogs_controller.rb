class DogsController < ApplicationController

    set :views, "app/views/dogs"

    # display list of all dogs
    get '/dogs' do
        @dogs = Dog.all
        # erb :"dogs/index"
        erb :index
    end

    # create a dog form
    get '/dogs/new' do
        @owners = Owner.all
        erb :new
    end

    # display a dog
    get '/dogs/:id' do 
        @dog = Dog.find(params[:id])
        erb :show
    end 

    # create a dog
    post "/dogs" do
        # binding.pry
        # .create => .new + .save
        # dog = Dog.create(params)

        dog = Dog.new(params[:dog])

        unless params[:owner][:name].empty?
            new_owner = Owner.create(params[:owner])

            dog.owner_id = new_owner.id
            # dog.owner = new_owner
        end

        dog.save

        redirect "/dogs/#{dog.id}"
    end

  

end