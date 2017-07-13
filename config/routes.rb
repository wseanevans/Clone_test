Rails.application.routes.draw do


  

  get 'all_users' => 'admin#all_users'

  post 'edit_user' =>'admin#edit_user'

  get 'show_user' => 'admin#show_user'

  post 'add_to_cart' =>'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  devise_for :users
  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

	root 'storefront#all_items'
	
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
