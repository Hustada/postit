class SessionsController < ApplicationController
  def new

  end

  def create
    #get handle on user (username)
    user = User.find_by(username: params[:username])
    #call authenticate on that user, pass in password
    if user && user.authenticate(params[:password])

    else
      flash[:error] = "Something is wrong with your username or password"
      redirect_to login_path
  end
end

  def destroy
  end
end