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

   # update a dog form
   get '/dogs/:id/edit' do 
        @dog = Dog.find(params[:id])
        @owners = Owner.all
        erb :edit
    end

    # update a dog
    patch '/dogs/:id' do
        dog = Dog.find(params[:id])

        # .update = .assign_attributes + .save
      

        dog.assign_attributes(params[:dog])
        
        unless params[:owner][:name].empty?
            new_owner = Owner.create(params[:owner])

            dog.owner_id = new_owner.id
        end

        dog.save
        
        redirect "/dogs/#{dog.id}"
    end

end