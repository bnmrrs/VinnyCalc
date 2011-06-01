class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def logged_in?
    session[:token].present?
  end
end
