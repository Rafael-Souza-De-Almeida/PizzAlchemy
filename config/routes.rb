Rails.application.routes.draw do
  resources :pizzas
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "pizzas#index"
end
