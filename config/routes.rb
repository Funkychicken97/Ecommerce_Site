Rails.application.routes.draw do
  post 'add_to_cart' => 'cart#add_to_cart'
  get 'view_order' => 'cart#view_order'
  get 'checkout' => 'cart#checkout'
  post 'order_complete' => 'cart#order_complete'
  devise_for :users
  get 'categorical'=>'storefronts#items_by_category'
  get 'branding'=>'storefronts#items_by_brand'
  
  root 'storefronts#all_items'
  resources :categories
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
