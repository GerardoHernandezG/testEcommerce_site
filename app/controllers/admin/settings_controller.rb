class Admin::SettingsController < ApplicationController
  
  before_action :validate_user, only: [:index]
  before_action :authenticate_admin!

  def index
  end

  def products
    @products = Product.all
  end

  private

  def validate_user
		if !user_signed_in?
			redirect_to new_user_session_path, notice: "Necesitas Iniciar Sesión como Administrador"
		end
  end

end
