class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  around_action :switch_locale

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  def default_url_options
    { locale: I18n.locale }
  end
  
  

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :phone, :country, :birth, :description, :professional_register, :speciality, :price])
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :description, :password, :password_confirmation, :current_password) }
  end
end
