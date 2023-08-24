Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  resources :books, only: %i[index show new create] do
    resources :bookings, only: :create
  end
  resources :users, only: %i[new create]
  get 'lending', to: 'pages#lending'
  get 'borrowing', to: 'pages#borrowing'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
