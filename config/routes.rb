Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get "users", to: "users#index"
  delete 'logout', to: 'sessions#destroy'
  resource :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :events
  resources :groups
  root "events#index"

  get 'login', to: 'sessions#new'

end

