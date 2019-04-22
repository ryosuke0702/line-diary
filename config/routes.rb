Rails.application.routes.draw do
  root to:"diaries#top"
  get "/index", to:"diaries#index"
  get "/new", to:"diaries#new"
  post "/create", to:"diaries#create"
  delete "/diaries/:id", to:"diaries#destroy"
  get "/diaries/:id/edit", to:"diaries#edit"
  patch "/diaries/:id", to:"diaries#update"
end
