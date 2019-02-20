Rails.application.routes.draw do
  devise_for :users
  root to: 'artworks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artworks do
    resources :bookings, only: [:new, :create]
  end
  get '/users/dashboard', to: 'users#dashboard'
  resources :users, only: [:show]
  resources :bookings, only: [] do
    member do
      get :accept
      get :decline
    end
  end
end
