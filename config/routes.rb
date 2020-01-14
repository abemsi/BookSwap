Rails.application.routes.draw do
  
  resources :books
  resources :search, only: [:search]
  resources :users

  get 'book_conversation/:book_id' => 'conversations#show_by_book'
  resources :conversations do
    resources :messages
  end
  
  
  
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
