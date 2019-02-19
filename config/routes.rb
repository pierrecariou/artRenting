Rails.application.routes.draw do
  devise_for :users
  root to: 'artworks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artworks do
    resources :bookings
  end
  resources :users, only: [:show]
end
