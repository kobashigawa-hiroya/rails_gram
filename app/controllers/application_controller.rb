class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?:action_controller?:action_controller

  protected

  def configure_permitted_paramenters
    devise_paramenter_sanitizer.permit(:sign_up, keys:[:name])
    devise_paramenter_sanitizer.permit(:account_update, kyes: [:name])
  end
end
