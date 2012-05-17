class SubscriptionsController < ApplicationController
  def create
    @sub = Subscription.create(params[:subscription])
    redirect_to :back, notice: "Subscription successfully created" 
  end

  def destroy
    Subscription.destroy(params[:id])
    redirect_to :back, notice: "Subscription successfully removed"
  end
end
