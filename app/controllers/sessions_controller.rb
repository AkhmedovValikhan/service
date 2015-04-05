class SessionsController < ApplicationController
  include SessionsHelper

#---get login---
  def new
    render layout: false
  end

#---post login---
  def create
    user = User.find_by(login: params[:session][:login].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to home_path

      #---debug
      flash[:user] = user
    else 
      flash.now[:alert] = 'Неверная комбинация логина и пароля'
      render action: 'new', layout: false
    end
  end

#---delete logout---
  def destroy
    sign_out
    redirect_to login_path
  end
end
