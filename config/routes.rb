Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"
  resources :html_pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match "histories/recommended", to: "histories#recommended", as: :recommended, via: [:get, :post]
  get "sections/edit_note_modal", to: "sections#edit_note_modal", as: :edit_note_modal 

  resources :histories  

  resources :sections
  resources :stories
end

