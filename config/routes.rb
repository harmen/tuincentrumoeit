Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :products

  namespace :dashboard do
    resources :products
  end
end
