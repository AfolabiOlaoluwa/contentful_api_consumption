Rails.application.routes.draw do
  get 'exceptions/show'
  root to: 'recipes#homepage'
  resources :recipes, only: %w[show]
end
