Rails.application.routes.draw do
  root to: 'photos#index'
  get 'photos/index'
  get 'photos/random'
  get 'search', to: 'photos#search'

  post   'photo/:photo_id/fav',   to: 'favorites#create',  as: 'photo_favorites'
  delete 'photo/:photo_id/unfav', to: 'favorites#destroy', as: 'photo_favorite'
end
