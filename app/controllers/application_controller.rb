class ApplicationController < ActionController::Base
  include Response
  include ExceptionHandler
  protect_from_forgery with: :exception

  protect_from_forgery with: :exception
  before_action :authenticate_user!


  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |u|
        u.permit(:username, :email, :password, :password_confirmation, :remember_me, :avatar, :avatar_cache)
      end
      devise_parameter_sanitizer.permit(:account_update) do |u|
        u.permit(:username, :password, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar)
      end
    end
end
