class HomeController < ApplicationController

  def index
    @user = User.new
  end

  def sign_in
    @user = User.find_by(login: params[:login]) 
    redirect 
  end

  private
    def user_params
      params.require(:person).permit(:login, :password)
    end


end
