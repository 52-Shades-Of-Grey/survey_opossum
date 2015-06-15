class SessionsController < ApplicationController
  def login
    if request.post?
      if user = User.find_by_email(params[:email])
        if user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to surveys_path, notice: "You've successfully logged in."
        else
          flash.now[:notice] = "Please try agian."
        end
      else
        flash.now[:notice] = "Please try agian."
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to sessions_login_path, notice: "Logged Out."
  end
end
