class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      # Handle a successful save.
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      # equivalent: redirect_to user_url(@user) This is because Rails automatically infers from redirect_to @user that we want to redirect to user_url(@user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end



end
