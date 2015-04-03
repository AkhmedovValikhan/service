class SessionsController < ApplicationController
  include SessionsHelper
  def new
  end

  def create
    user = User.find_by(login: params[:session][:login].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to home_path
      flash[:user] = user
    else 
      flash.now[:alert] = 'Invalid email/password combination'
      flash.now[:user] = user
      render 'new'
    end
  end

end
