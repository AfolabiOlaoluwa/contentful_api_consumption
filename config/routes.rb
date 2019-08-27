Rails.application.routes.draw do
  get 'exceptions/show'
  root 'recipes#homepage'
  resources :recipes, only: %w[show]
end
