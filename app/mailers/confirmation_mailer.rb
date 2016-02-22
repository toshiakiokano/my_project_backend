class ConfirmationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirmation_mailer.send_confirmation.subject
  #
  def send_confirmation(obj)
    @email = obj.email
    @token = obj.confirmation_token

    mail to: @email
  end
end
