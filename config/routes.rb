Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get "users", to: "users#index"
  resources :users, only: [:new, :create]
  resources :events
  resource :sessions, only: [:new, :create, :destroy]
  resources :groups
  root "events#index"

  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'

end

