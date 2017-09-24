Rails.application.routes.draw do
  resources :suppliers
  resources :products
  resources :tsupplierproducts
  resources :tcustomerproducts
  resources :customers
  get 'dashboard/home'
  root 'dashboard#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
