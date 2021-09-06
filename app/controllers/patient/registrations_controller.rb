# frozen_string_literal: true

class Patient::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  def new
    super
  end
  
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :age, :phone, :country, :birth])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update) {
       |u| u.permit(
          :name,
          :gender,
          :phone,
          :country,
          :birth,
          :email,
          :description,
          :password,
          :password_confirmation,
          :current_password) }
  end

end
