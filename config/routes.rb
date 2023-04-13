Rails.application.routes.draw do
  get 'auth/index'
  devise_for :users, path: 'users', path_names: { sign_in: 'signin' }
  resources :restaurants
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index" 

  namespace :api do
    post '/login', to: 'auth#index'
    post '/order/:id/status', to: 'orders#index'
  end

end
