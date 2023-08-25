Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  resources :books, only: %i[index show new create edit update destroy] do
    resources :bookings, only: %i[create edit update show]
  end
  resources :users, only: %i[new create edit update destroy]
  get 'lending', to: 'pages#lending'
  get 'borrowing', to: 'pages#borrowing'
end
