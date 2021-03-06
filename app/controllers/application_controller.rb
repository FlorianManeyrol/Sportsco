class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  include Pundit

  after_action :verify_authorized, except: :index, unless: :devise_controller?
  after_action :verify_policy_scoped, only: :index, unless: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
  	flash[:alert] = "You are not authorized to perform this action."
  	redirect_to(root_path)
  end
  
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) do |user| 
  		user.permit(:first_name, :last_name, :email, :password, :sex, :birth)
  	end
  	devise_parameter_sanitizer.permit(:account_update) do |user| 
  		user.permit(:first_name, :last_name, :email, :password,:current_password, :sex, :birth, :picture, :picture_cache)
  	end
  end
end
