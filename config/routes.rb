Rails.application.routes.draw do


  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "home#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match "histories/recommended", to: "histories#recommended", as: :recommended, via: [:get, :post]
  #home
  post "home/contact", to: "home#contact", as: :home_contact
  get "home/index", to: "home#index", as: :internal_home
  
  get "test_modal", to: "home#test_modal", as: :home_test_modal
  
  resources :histories  
  resources :html_pages

  #sections
  get "sections/edit_note_modal", to: "sections#edit_note_modal", as: :edit_note_modal 
  get "sections/edit_footnote_modal", to: "sections#edit_footnote_modal", as: :edit_footnote_modal   
  resources :sections

  resources :stories
  resources :wikis
  resources :wiki_tags  
end

