Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get "users", to: "users#index"
  resources :users, only: [:new, :create]
  resources :events
  resources :sessions, only: [:new, :create, :destroy]
  resources :groups
  root to: "events#index"
  root to: "groups#index"

  get '/login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'


  # get "events", to: "events#index"
  # #get "events/:id"  => "events#show", as: :event
  # #get "events/new" => "events#new", as: :new_event
  # post "events/", to: "events#create"
  # #get "events/:id/edit" => "events#edit", as: :edit_event
  # patch "events/:id", to: "events#update"
  # delete "events/:id", to: "events#destroy"

  # get "groups", to: "groups#index"
  # get "groups/:id" => "groups#show", as: :group
  # #get "groups/new" => "groups#new", as: :new_group
  # post "groups/" => "groups#create"
  # get "groups/:id/edit" => "groups#edit", as: :edit_group
  # patch "groups/:id" => "groups#update"
  # delete "groups/:id" => "groups#destroy"





end







