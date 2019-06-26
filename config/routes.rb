Rails.application.routes.draw do


  devise_for :users
  root to: "home#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match "histories/recommended", to: "histories#recommended", as: :recommended, via: [:get, :post]
  get "sections/edit_note_modal", to: "sections#edit_note_modal", as: :edit_note_modal 
  post "home/contact", to: "home#contact", as: :home_contact
  get "home/index", to: "home#index", as: :internal_home
  
  resources :histories  
  resources :html_pages
  resources :sections
  resources :stories
  resources :wikis
  resources :wiki_tags  
end

