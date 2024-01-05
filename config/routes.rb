Rails.application.routes.draw do
  devise_for :users
  resources :prototypes, only: :new
  resources :users, only: [:edit, :update]
end
