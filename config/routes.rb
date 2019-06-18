Rails.application.routes.draw do
  devise_for :users
  resources :orders_products
  resources :orders
  resources :addresses
  resources :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home_controller#index'
end
