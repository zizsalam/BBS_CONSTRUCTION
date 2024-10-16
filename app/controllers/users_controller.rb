class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def show
    # The @user instance variable is already set by the set_user method
  end

  def edit
    authorize_user(@user)
  end

  def update
    authorize_user(@user)
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email) # Add other allowed parameters
  end

  def authorize_user(user)
    unless current_user == user
      redirect_to root_path, alert: "You are not authorized to perform this action."
    end
  end
end
