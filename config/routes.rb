Rails.application.routes.draw do
  
  root 'pages#home'
  get '/menu' => 'pages#menu'
  get '/beans' => 'pages#beans'
  get '/blog' => 'pages#blog'

  get '/login' => 'admin/sessions#new'
  get '/logout' => 'admin/sessions#destroy'
  get '/admin' => 'admin/posts#index'

  resources :posts

  namespace :admin do
    resources :posts
    resources :sessions, only: [:new, :create, :destroy]
    resources :moderators, only: [:index, :edit, :update]
  end
end
