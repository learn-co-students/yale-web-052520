Rails.application.routes.draw do
  # get 'owners/index'
  # get 'owners/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :dogs, only: [:index, :show]

  get "/dogs", to: "dogs#index"
  get "/dogs/:id", to: "dogs#show"
end
