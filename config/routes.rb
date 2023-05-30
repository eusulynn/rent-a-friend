Rails.application.routes.draw do
  devise_for :users
  root to: "friends#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :friends, only: [:index, :show]
    # resources :bookings, only: [:new, :create]

  # resources :bookings, only: [:index, :show, :destroy] do
end
