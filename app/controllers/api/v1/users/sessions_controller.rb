class Api::V1::Users::SessionsController < ApplicationController
  before_action :validate_token, only: [ :create ]

  def create
    resource = User.find_by(email: session_params[:email].downcase)

    if resource && resource.authenticate(session_params[:password]) && resource.confirmed_at.present?
      session[:token] = nil

      respond_with resource, location: nil
    else
      errors_msgs = {
        Errors: ["パスワードが違います"]
      }

      respond_with errors_msgs, location: nil
    end

#    if confirm_token
#      if resource &&
#        resource.confirmed_at.blank? &&
#        resource.authenticate(session_params[:password])
#
#        session[:token] = nil
#
#        respond_with resrouce, location: nil
#      else
#        errors_msgs = {
#          Errors: ["パスワードが違います"]
#        }
#
#        respond_with errors_msgs, location: nil
#      end
#    else
#      respond_with ACCESS_ERROR, location: nil
#    end

  end


  def destroy
  end



  private
  def session_params
    params.require(:user).permit(:email, :password)
  end
end
