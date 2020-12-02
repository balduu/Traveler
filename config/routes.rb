Rails.application.routes.draw do
  get 'users/show'
  resources :comments
  get 'static_pages/home'
  devise_for :users
  
  root to: 'static_pages#home'
  #post "follow/user" => "followers#follow_user", as: :follow_user
  #post "followers" => "followers#create", as: :follow_user
  #delete 'users/:id' => 'followers#destroy'
  get "post/like" => "likes#create", as: :like_post
  resources :posts
  resources :searches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
