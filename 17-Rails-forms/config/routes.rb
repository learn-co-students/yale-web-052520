Rails.application.routes.draw do
  # get 'owners/index'
  # get 'owners/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :dogs, only: [:index, :show, :new, :create, :edit, :update]

  # get "/dogs", to: "dogs#index"

  # get "/dogs/new", to: "dogs#new"

  # get "/dogs/:id", to: "dogs#show"

  # post "/dogs", to: "dogs#create"

  # get "/dogs/:id/edit", to: "dogs#edit", as: "dog"

end
