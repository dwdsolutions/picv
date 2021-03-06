class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to login_url, :alert => exception.message
  end
  
  private

  def current_user
    @current_user ||= Usuario.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
end
