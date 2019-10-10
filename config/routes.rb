Rails.application.routes.draw do

  resources :section_footnotes
  resources :section_notes
  devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)
  devise_for :users

  root to: "home#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match "histories/recommended", to: "histories#recommended", as: :recommended, via: [:get, :post]
  #home
  post "home/contact", to: "home#contact", as: :home_contact
  get "home/index", to: "home#index", as: :internal_home
  get "home/home", to: "home#home", as: :home_home
  
  get "test_modal", to: "home#test_modal", as: :home_test_modal
  
  resources :histories  
  resources :html_pages

  #sections
  get "sections/edit_note_modal", to: "sections#edit_note_modal", as: :edit_note_modal 
  get "sections/edit_footnote_modal", to: "sections#edit_footnote_modal", as: :edit_footnote_modal   
  resources :sections
  
  get "stories/manuscript", to: "stories#manuscript", as: :story_manuscript
  resources :stories
  resources :wikis
  resources :wiki_tags 
  resources :users 
end

