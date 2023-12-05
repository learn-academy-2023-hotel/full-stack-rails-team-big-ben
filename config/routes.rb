Rails.application.routes.draw do
  get 'blogs' => 'blog#index', as: 'blogs'
  get 'blogs/new' => 'blog#new', as: 'new_blog'
  get 'blogs/:id' => 'blog#show', as: 'blog'
  post 'blogs' => 'blog#create'
  delete '/blogs/:id' => 'blog#destroy', as: 'delete_blog'

  # Defines the root path route ("/")
  root "blog#index"
end

