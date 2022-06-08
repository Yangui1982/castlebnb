Rails.application.routes.draw do
  devise_for :users
  root to: 'castles#index'
  resources :castles do
    resources :reviews, only: [:new, :index, :create]
    resources :bookings, except: [:destroy]
  end
  resources :bookings, only: [:destroy]

  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
