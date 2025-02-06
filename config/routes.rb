Rails.application.routes.draw do
  get 'about_us/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "homes#index"
  # get 'categories', to: "categories#index"
  get 'products', to: "products#index"
  get 'buys', to: "buys#index"
  get 'sells', to: "sells#index"
  get 'confirmation', to: 'registrations#confirmation'
  resources :registrations, only: [:new, :create]
  resources :contacts, only: [:new, :create]
  resources :categories
end
