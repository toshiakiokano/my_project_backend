class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token

  respond_to :json

  include SharedMethods

  protected
#  def confirm_token
#    if (session[:token] == request.headers[:HTTP_X_CSRF_TOKEN]) && (session[:token] != nil)
#      return true
#    else
#      return false
#    end
#  end
#
#  def validate_token
#    if !self.confirm_token
#      respond_with ACCESS_ERROR, location: nil
#    end
#  end



  def validate_token
    unless (session[:token] == request.headers[:HTTP_X_CSRF_TOKEN]) && (session[:token] != nil)
      respond_with ACCESS_ERROR, location: nil
    end
  end
end
