class UserController < ActiveRecord::Base

  def create
    @user = User.create( user_params )
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :avatar)
  end
