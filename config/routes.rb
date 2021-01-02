Rails.application.routes.draw do
  resources :manually_created_games
  root 'home#index'
  resources :steam
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
