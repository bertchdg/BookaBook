Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :books, only: %i[index show new create edit update] do
    resources :bookings, only: :create
  end
  resources :users, only: %i[new create edit update]
  get 'lending', to: 'pages#lending'
  get 'borrowing', to: 'pages#borrowing'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
