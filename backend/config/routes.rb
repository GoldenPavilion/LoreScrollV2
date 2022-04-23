Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :stories
    resources :settings
    resources :characters
  end
end
