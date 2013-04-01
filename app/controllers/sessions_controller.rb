class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "You're now logged in"
    else
      redirect_to root_url, flash: "Your username or password wasn't right"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "You're now logged out"
  end

end
