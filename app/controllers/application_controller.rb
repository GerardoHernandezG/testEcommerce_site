class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_categories

  protected

  	#lazy way to add custom params to devise :P
	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
	end

	#validar usuarios autenticados
	def authenticate_normal!
		redirect_to root_path unless user_signed_in? && current_user.is_normal?
	end

	def authenticate_admin!
		redirect_to root_path unless user_signed_in? && current_user.is_admin?
	end

	def set_categories
	  	@categories = Category.all
	end

end
