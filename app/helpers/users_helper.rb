module UsersHelper

  def me?
    @user.id == session[:user_id]
  end

end
