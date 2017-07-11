Rails.application.routes.draw do


  

  get 'categorical' => 'storefront#item_by_category'

  get 'branding' => 'storefront#item_by_brand'

	root 'storefront#all_items'
	
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
