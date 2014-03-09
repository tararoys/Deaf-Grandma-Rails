# in app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def index
    @grandma = params[:grandma]
  end

  def grandma
    @user_input = params[:user_input]
    if @user_input == @user_input.downcase
      @grandma = "SPEAK UP!"
    else
      @grandma = "NOT SINCE 1972!"
    end
    redirect_to root_path(:grandma => @grandma)
  end
end