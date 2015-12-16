Rails.application.routes.draw do
  get 'articles/index2'
  devise_for :users
  get 'persons/profile'
  root 'articles#index'
  get 'persons/profile', as: 'user_root'
  resources :articles do
  resources :comments
end
end
