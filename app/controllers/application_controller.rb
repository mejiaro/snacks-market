class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
  include AdminAuthorization

  before_action :doorkeeper_authorize!, :current_resource_owner
  respond_to    :json

  attr_reader :current_user

  private
  
  def current_resource_owner
    @current_user = User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
  
end
