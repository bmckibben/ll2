Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"
  resources :html_pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match "histories/recommended", to: "histories#recommended", as: :recommended, via: [:get, :post]
  resources :histories  

  
end

