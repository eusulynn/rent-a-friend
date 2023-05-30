Rails.application.routes.draw do
  devise_for :users
  root to: "friends#index"
  resources :friends, only: [:index, :show]
  resources :bookings, only: [:new, :create, :index]
end
