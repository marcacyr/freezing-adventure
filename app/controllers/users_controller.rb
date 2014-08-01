class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Thank you for signing up!"
      redirect_to root_url
    else
      render :action => "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation, :email)
  end
end
