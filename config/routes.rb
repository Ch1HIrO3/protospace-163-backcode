Rails.application.routes.draw do
  devise_for :users
<<<<<<< Updated upstream
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
=======
  resources :prototypes, only: :new
>>>>>>> Stashed changes
end
