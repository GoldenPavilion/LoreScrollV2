Rails.application.routes.draw do
  get '/api/get_current_user', to: "api/sessions#get_current_user"
  post '/api/login', to: "sessions#create"
  delete '/api/logout', to: "sessions#destroy"
  
  namespace :api do
    resources :users
    resources :stories
    resources :settings
    resources :characters
  end
end
