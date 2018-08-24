Rails.application.routes.draw do
  resources :events
  devise_for :users
  resources :foundations
  get 'users/user'

  get 'admin/users'

  get 'home/index'
  
  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
