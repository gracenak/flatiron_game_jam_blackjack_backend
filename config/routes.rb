Rails.application.routes.draw do
  
  resources :cards
  namespace :api do
    namespace :v1 do
      get '/players/end_game', to: 'players#end_game'
      resources :players 
      resources :game
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
