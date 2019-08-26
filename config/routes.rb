Rails.application.routes.draw do
  root to: 'recipes#homepage'
  resources :recipes, only: %w[show]
end
