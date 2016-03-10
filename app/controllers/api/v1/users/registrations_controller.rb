class Api::V1::Users::RegistrationsController < ApplicationController
  before_action :validate_token, only: [ :create ]

  def create
    resource = User.new(register_params)


    if resource.save
      # save confirmation_token
      confirmation_token = SecureRandom.hex(8)

      resource.update(confirmation_token: confirmation_token,
                      confirmation_sent_at: Time.now.strftime("%Y-%m-%d %H:%M:%S"))

      # sent confimation_token to regist user
      ConfirmationMailer.send_confirmation(resource).deliver


      session[:token] = nil

      respond_with resource, location: nil
    else
      errors_msgs = {
        Errors: resource.errors.full_messages
      }

      respond_with errors_msgs, location: nil
    end



#    if confirm_token
    #
#    else
#      respond_with ACCESS_ERROR, location: nil
#    end
  end


  private
  def register_params
    params.require(:user).permit(:email, :password, :password_confirmation);
  end
end
