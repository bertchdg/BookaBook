Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  resources :books, only: %i[index show new create]
  resources :users, only: %i[new create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
