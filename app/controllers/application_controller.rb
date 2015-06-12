class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    private def logged_in?
      if User.find_by_id(session[:user_id]) == nil
        redirect_to sessions_login_path
      elsif !User.find_by_id(session[:user_id])
        redirect_to sessions_login_path, notice: "You can't access that page."
      end
    end
end
