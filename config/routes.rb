Rails.application.routes.draw do
  root to: 'photos#index'
  get 'photos', to: 'photos#index'

  get 'photos/random'
  get 'photos/favorites'
  get 'search', to: 'photos#search'

  scope path: 'photo/:photo_id' do
    post   'fav',   to: 'favorites#create',  as: 'photo_favorites'
    delete 'unfav', to: 'favorites#destroy', as: 'photo_favorite'
  end
end
