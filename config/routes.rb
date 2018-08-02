Rails.application.routes.draw do
  
  resources :blog
  post '/blog/new' => 'blog#create'
  
end
