Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  namespace :api do
    resources :users
    resources :stories
    resources :settings
    resources :characters
  end
end
