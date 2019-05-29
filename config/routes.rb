Rails.application.routes.draw do
  
  get 'sessions/new'
  get 'users/new'
  root to:"diaries#top"
  get "/index", to:"diaries#index"
  get "/new", to:"diaries#new"
  post "/create", to:"diaries#create"
  delete "/diaries/:id", to:"diaries#destroy"
  get "/diaries/:id/edit", to:"diaries#edit"
  patch "/diaries/:id", to:"diaries#update"
  get "/diaries/:id", to:"diaries#show"

  get '/signup', to: 'users#new'
  resources :users
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
