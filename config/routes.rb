Rails.application.routes.draw do

  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get 'about', to:'about#index'
  get 'dashboard', to:'dashboard#index'
  resources :blogs do
    get '/blogs/:page', action: :index, on: :collection
  end
  resources :contactus
end
