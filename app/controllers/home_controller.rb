class HomeController < ApplicationController
  before_action :require_user
  def index
    
  end

  private
    def user_params
      params.require(:person).permit(:login, :password)
    end


end
