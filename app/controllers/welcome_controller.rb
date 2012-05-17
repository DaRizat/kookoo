class WelcomeController < ApplicationController

  before_filter :check_for_login

  def index
    @user = User.find(session[:user_id])
    @message = Message.new
  end

  def check_for_login
    if session[:user_id].blank?
      redirect_to new_user_path
    end
  end
end
