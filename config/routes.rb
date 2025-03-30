Rails.application.routes.draw do
  devise_for :users
  resources :pizzas
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pizzas#index"
  get "pizzas/find_by_type/pizza_type", to: "pizzas#find_by_type", as: "find_pizza_type" # Não interfere nas rotaspadrao
end
