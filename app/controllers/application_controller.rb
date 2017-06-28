class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit(:email,:Nombre,:Apellido,:Rut,:Direccion,:Telefono, :Fonoalt,:usertype_id, :password,:password_confirmation)}
    devise_parameter_sanitizer.permit(:account_update){ |u| u.permit(:email,:Nombre,:Apellido,:Rut,:Direccion,:Telefono, :Fonoalt,:usertype_id,:password,:password_confirmation)}
  end
end