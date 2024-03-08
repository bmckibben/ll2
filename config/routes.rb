Rails.application.routes.draw do

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
  get "mom", to: "home#mom", as: :home_mom
  
  get "test_modal", to: "home#test_modal", as: :home_test_modal
  
  resources :histories  
  resources :html_pages

  #sections
  get "sections/edit_note_modal", to: "sections#edit_note_modal", as: :edit_note_modal 
  get "sections/edit_footnote_modal", to: "sections#edit_footnote_modal", as: :edit_footnote_modal   
  get "sections/notes/:story_id(.:format)", to: "sections#notes", as: :chapter_notes
  get "sections/summaries/:story_id(.:format)", to: "sections#summaries", as: :chapter_summaries
  get "sections/chapters/:story_id(.:format)", to: "sections#chapters", as: :chapters
  get 'wikis/wiki_form' => 'wikis#wiki_form'
  get 'wikis/re_display' => 'wikis#re_display'
  get 'wikis/quick' => 'wikis#quick'
  get 'wikis/wikilist' => 'wikis#wikilist'
  get 'wikis/search' => 'wikis#search'
  get 'wikis/printlist' => 'wikis#printlist'  
  post 'wiki_tags/delete_wiki_tag' => 'wiki_tags#delete_wiki_tag'
  post 'wikis/wiki_disable' => 'wikis#wiki_disable'
  post 'wiki_tags/new_wiki_tag' => 'wiki_tags#new_wiki_tag'
  get 'wiki_tags/menu' => 'wiki_tags#menu'
  get "stories/download_json", to: "stories#download_json", as: :story_download_json
  get "ac_transactions/status_update", to: "ac_transactions#status_update", as: :ac_transaction_status_update

  resources :sections
  
  get "stories/manuscript", to: "stories#manuscript", as: :story_manuscript
  resources :stories
  resources :wikis
  resources :wiki_tags 
  resources :users 
  resources :ac_sub_categories
  resources :ac_categories
  resources :ac_schedules
  resources :ac_transactions
  resources :ac_transaction_statuses
  resources :ac_sub_cagetories
  resources :ac_cagetories
  resources :ac_payees
  resources :ac_accounts
  resources :ac_groups
  resources :quotes
  resources :section_footnotes
  resources :section_notes  
end

