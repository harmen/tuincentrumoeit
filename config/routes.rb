Rails.application.routes.draw do
  root "products#index"

  resources :products

  namespace :dashboard do
    resources :products
  end
end
