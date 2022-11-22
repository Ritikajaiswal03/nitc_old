Rails.application.routes.draw do
  #get 'home/index'
  get 'home/about'
  get 'home/login'
  get 'home/Signup'
  get 'home/sellerPage'
  root 'home#index'
  get 'sessions/new', to: 'sessions#new'
  get 'users/new', to: 'users#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #session routes
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :users, except: [:new]
end
