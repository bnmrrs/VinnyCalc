class AuthenticationsController < ApplicationController
  def create
    omniauth = request.env["omniauth.auth"]
    session[:token] = omniauth['credentials']['token']

    redirect_to root_url
  end
end
