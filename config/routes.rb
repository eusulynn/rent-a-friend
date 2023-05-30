Rails.application.routes.draw do
  devise_for :users
  root to: "friends#index"
  resources :friends, only: [:index, :show, :new, :create, :destroy]
  resources :bookings, only: [:new, :create, :index, :destroy]
end
