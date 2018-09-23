Rails.application.routes.draw do
    resources :shopping_cart_items
    resources :shopping_carts
    resources :appointments
    resources :volunteers
    resources :clients
    resources :agencies
    resources :donors
    resources :categories 
    resources :subcategories 
    resources :products 
    root to: 'products#index'
end
