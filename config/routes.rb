Rails.application.routes.draw do
  resources :games_from_results
  resources :created_games
  root 'home#index'
  resources :steam_games
  devise_for :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
