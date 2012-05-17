class MessagesController < ApplicationController
  def create
    @message = Message.create({:body => params[:body], :user_id => session[:user_id]})
    redirect_to :back, :notice => "Message Successfully Posted!"
  end
end
