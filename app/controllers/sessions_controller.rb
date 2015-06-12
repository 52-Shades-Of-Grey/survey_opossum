class SessionsController < ApplicationController
  def login
    if request.post?
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to surveys_path, notice: "You've successfully logged in."
      else
        flash.now[:notice] = "Incorrect password, try agian."
      end
    end
    # @user = Teacher.find(params[:id])
    # session[:name] = @user.name
  end

  def logout
    session[:user_id] = nil
    redirect_to sessions_login_path, notice: "Logged Out."
  end
end
