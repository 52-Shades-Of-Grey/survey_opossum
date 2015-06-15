module ApplicationHelper
  def login_button
    if params[:action] != "get" && params[:controller] != "sessions"
      link_to_unless_current("Login Page", sessions_login_path)
    end
  end

  def logout_button
    link_to "Logout", sessions_logout_path if session[:user_id]
  end
end
