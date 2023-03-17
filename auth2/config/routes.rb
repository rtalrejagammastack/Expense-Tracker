Rails.application.routes.draw do
  default_url_options :host => "localhost", :port => "4000"

  root 'static_pages#home'

  get "sign_up", to: "users#new"
  post "sign_up", to: "users#create"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  get "account", to: "users#edit"
  put "account", to: "users#update"
  delete "account", to: "users#destroy"
  
  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token
  resources :passwords, only: [:create, :edit, :new, :update], param: :password_reset_token
  
  resources :active_sessions, only: [:destroy] do
    collection do
      delete "destroy_all"
    end
  end
  
  get 'articles' => 'articles#index'
  get 'cart' => 'cart#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
