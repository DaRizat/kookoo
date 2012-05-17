module UserSessionsHelper
  def user_logged_in?
    not session[:user_id].blank?
  end
end
