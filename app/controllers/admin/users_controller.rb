class Admin::UsersController < ApplicationController

  before_action :authenticate_normal!, only: [:show]  

  def index
  	@users = User.all
  end
 
end
