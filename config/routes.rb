Rails.application.routes.draw do
  resources :plars
  resources :pichanies
  resources :categories
  resources :products
  resources :aacounts
  resources :asupliers
  resources :authors
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get ("articles/index")
end
