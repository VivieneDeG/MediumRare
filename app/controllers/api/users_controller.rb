class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      render 'api/users/show'
    else
      render json: ["Invalid email or password."], status: 422
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
