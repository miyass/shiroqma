Rails.application.routes.draw do
  devise_for :users
  get '/posts/search' => 'posts#search'
  resources :posts do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
  post '/users/follow' => 'users#follow'
  post '/users/unfollow' => 'users#unfollow'
  root 'posts#index'
  # get 'users/:id' => 'users#show
end
