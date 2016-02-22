class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token

  respond_to :json

  protected
  def confirm_token
    if (session[:token] == request.headers[:HTTP_X_CSRF_TOKEN]) && (session[:token] != nil)
      return true
    else
      return false
    end
  end
end
