Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :dogs, only: [:index, :show, :new, :create, :edit, :update]

  resources :toys, only: [:index, :show]

  resources :books, only: [:index, :show]


end
