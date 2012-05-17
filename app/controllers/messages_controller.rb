class MessagesController < ApplicationController
  def create
    @message = current_user.messages.create(params[:message])
    redirect_to :back, :notice => "Message Successfully Posted!"
  end
end
