Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/players/end_game', to: 'players#end_game'
      resources :game
      resources :cards

      resources :players do
        resources :cards
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
