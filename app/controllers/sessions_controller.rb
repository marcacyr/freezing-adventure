class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Signed in!"
      redirect_to root_url
    else
      flash[:error] = "Email or password is invalid."
      redirect_to :back
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Signed out!"
    redirect_to root_url
  end
end
