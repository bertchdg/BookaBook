Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :books, only: %i[index show new create edit update destroy] do
    resources :bookings, only: %i[create edit update show]
  end
  
  resources :users, only: %i[new create edit update destroy]

  get 'lending', to: 'pages#lending'
  get 'borrowing', to: 'pages#borrowing'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
