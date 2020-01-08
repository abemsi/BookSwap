Rails.application.routes.draw do
  
  resources :books
  resources :search, only: [:search]
  resources :genres, only: [:show]
  resources :users
  
  root to: 'pages#home'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  get '/books/new' => 'books#new'
  post '/books/new' => 'books#create'

  get '/books/:id' => 'books#show'

  get '/books' => 'books#index'
  
  get '/search' => 'pages#search'
 
end
