Rails.application.routes.draw do
  get 'users/show'
  resources :comments
  get 'static_pages/home'
  devise_for :users
  root to: 'static_pages#home'
  resources :posts
  resources :searches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
