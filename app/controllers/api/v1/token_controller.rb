class Api::V1::TokenController < ApplicationController
  def get_csrf_token
    session[:token] = form_authenticity_token

    render text: session[:token]
  end
end
