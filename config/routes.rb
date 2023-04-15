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
    post "/orders", to: "orders#create"
    post '/order/:id/status', to: 'orders#set_status'
    get "/orders", to: "orders#index"
    get '/products', to: 'products#index'
    get '/restaurants', to: 'restaurants#index'

    post "/order/:id/rating", to: "orders#set_rating"
    get "/account/:id", to: "auth#get_account"
    post "/account/:id", to: "auth#update_account"
  end

  
end
