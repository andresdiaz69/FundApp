Rails.application.routes.draw do
  get 'home/index'

  resources :event_users
  resources :event_foundations
  resources :events_users
  resources :foundation_types
  resources :profile_roles
  resources :profiles
  resources :roles
  resources :events
  devise_for :users
  resources :foundations
  get 'users/user'

  get 'admin/users'

  get 'home/index'
  
  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
