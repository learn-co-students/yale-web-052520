class ToysController < ApplicationController
    before_action :current_toy, only: [:show]

    def index
        @toys = Toy.all
    end

    def show
    end

    
    def current_toy
        @toy = Toy.find(params[:id])
    end

end
