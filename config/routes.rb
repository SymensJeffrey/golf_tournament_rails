Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "player1s" => "player1s#index"
  get "player2s" => "player2s#index"
end
