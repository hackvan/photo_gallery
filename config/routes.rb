Rails.application.routes.draw do
  root to: 'photos#index'
  get 'photos/index'
end
