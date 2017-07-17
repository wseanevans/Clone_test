class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
	before_action :categories, :brands

	before_action :configure_permitted_parameters, if: :devise_controller?

	helper_method :current_order

	def configure_permitted_parameters
	   devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
	   devise_parameter_sanitizer.permit(:account_update, keys: [:role])
	end

	def categories
		@categories = Category.all

	end	

	def brands
		@brands = Product.pluck(:brand).sort.uniq
	end	

	def current_order

		order = Order.all
    if session[:order_id] != nil && !order.blank?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end


end












