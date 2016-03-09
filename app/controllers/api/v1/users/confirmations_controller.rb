class Api::V1::Users::ConfirmationsController < ApplicationController
  include SharedMethods

  def create
    resource = User.find_by(email: confirm_params[:email])

    if confirm_token
      if (resource.confirmation_token == confirm_params[:confirmation_token]) && (resource.email == confirm_params[:email])

        resource.update_columns(confirmed_at: Time.now.strftime("%Y-%m-%d %H:%M:%S"))


        respond_with resource, location: nil
      else
        errors_msgs = {
          Errors: resource.errors.full_messages
        }

        respond_with errors_msgs, location: nil
      end

    else
      respond_with ACCESS_ERROR, location: nil
    end
  end


  private
  def confirm_params
    params.require(:user).permit(:email, :confirmation_token)
  end
end
