Rails.application.routes.draw do
  get 'end_game', action: :end_game, controller: 'cards'
  resources :cards
  namespace :api do
    namespace :v1 do
      resources :players 
      resources :game
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
