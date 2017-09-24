Rails.application.routes.draw do
  get 'dashboard/home'
  root 'dashboard#home'
  resources :suppliers
  resources :table_customer_products
  resources :customers
  resources :products
  resources :table_supplier_products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
