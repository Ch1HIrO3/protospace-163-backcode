Rails.application.routes.draw do
  resources :prototypes, only: :new
end
