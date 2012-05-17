class DashboardController < ApplicationController

  before_filter :check_for_login

  def index
    @user = User.find(session[:user_id])
    @message = Message.new
    @subscriptions = current_user.subscriptions.select("subscribee_id")

    @messages = Message.where(:user_id => @subscriptions)
  end

  def check_for_login
    if session[:user_id].blank?
      redirect_to new_user_path
    end
  end
end
