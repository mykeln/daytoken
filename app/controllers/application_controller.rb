class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_app_name

  def get_app_name
    @app_name = "Pinecone"
  end

private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
end
