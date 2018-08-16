Rails.application.routes.draw do
  devise_for :users
  resources :blog
  root to: 'blog#index'
  post 'blog/new' => 'blog#create'
  get 'users/:id' => 'users#show'
end
