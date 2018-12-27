class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
  include AdminAuthorization

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :doorkeeper_authorize!, :current_resource_owner
  respond_to    :json

  attr_reader :current_user

  private
  
  def current_resource_owner
    @current_user = User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

  def configure_permitted_parameters
    added_attrs = [:email, :name]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
  
end
