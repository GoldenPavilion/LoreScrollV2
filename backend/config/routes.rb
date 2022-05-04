Rails.application.routes.draw do
  post '/api/login', to: "sessions#create"
  delete '/api/logout', to: "sessions#destroy"
  
  namespace :api do
    resources :users
    resources :stories
    resources :settings
    resources :characters
  end
end
