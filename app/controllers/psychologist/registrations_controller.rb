# frozen_string_literal: true

class Psychologist::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  def new
    super
  end

  # protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :phone, :country, :birth, :description, :professional_register, :speciality, :price])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :gender, :phone, :country, :birth, :description, :professional_register, :speciality, :price])
  end

end
