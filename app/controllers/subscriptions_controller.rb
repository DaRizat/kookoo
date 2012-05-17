class SubscriptionsController < ApplicationController
  def create
    @sub = Subscription.create(params[:subscription])
    redirect_to :root, notice: "Subscription successfully created" 
  end

  def destroy
    Subscription.destroy(params[:id])
    redirect_to :root, notice: "Subscription successfully removed"
  end
end
