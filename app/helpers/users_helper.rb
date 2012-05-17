module UsersHelper
  def me?
    @user.id == session[:user_id]
  end

  def user_is_me? id
    id == current_user.id unless current_user.blank?
  end

  def get_user_subscription id
    Subscription.where("subscriber_id=#{current_user.id} AND subscribee_id=#{id}").first_or_initialize
  end
end
