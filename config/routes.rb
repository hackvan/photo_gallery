Rails.application.routes.draw do
  root to: 'photos#index'
  get 'photos/index'
  get 'photos/random'
  get 'search', to: 'photos#search'
  # resources :favorites, only [:create, :destroy]
end
