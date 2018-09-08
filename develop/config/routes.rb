Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'

  get 'home/top' => "home#top"
  get '/' => "home#top"
  
  get "about" => "home#about"
  
  get "select" => "home#select"

  get 'pages/index'
  
  resources 'users'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources 'users'

end
