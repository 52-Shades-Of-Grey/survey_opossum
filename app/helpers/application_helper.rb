module ApplicationHelper
  def login_page
    if params[:action] == "all_surveys" && params[:controller] == "responses"
      link_to "Login Page", sessions_login_path
    end
  end

  def logout_button
    link_to "Logout", sessions_logout_path if session[:user_id]
  end
end
