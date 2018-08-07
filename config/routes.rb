Rails.application.routes.draw do
  #root
  root to: "restaurants#index"
  resources :restaurants do
    resources :reviews, only: [:create]
  end
  #read
  # #index
  # get 'restaurants', to: 'restaurants#index', as: :restaurants
  # #show
  # get 'restaurant/:id', to: 'restaurants#show', as: :restaurant
  # #create
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'
  # #update
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # patch 'restaurants/:id', to: 'restaurant#update'
  # #delete
  # delete 'restaurants/:id', to: 'restaurants#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
