Rails.application.routes.draw do
  resources :manually_added_games
  resources :steam_games
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
