class ApplicationController < ActionController::Base
  before_action :authenticate_users_information!

  # protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:name, :weight, :height, :date_of_birth, :age])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:name, :weight, :height, :date_of_birth, :age])
  end
end
