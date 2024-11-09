Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Routes for the customers controller.
  root "customers#index"
  get "/customers/alphabetized", to: "customers#alphabetized"
  get "/customers/missing_email", to: "customers#missing_email"

  resources :customers, only: [:index, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
