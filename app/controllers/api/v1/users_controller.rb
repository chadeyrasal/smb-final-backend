class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: { error: "There was an error creating this user" }
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end


  private

  def user_params
    params.require(:user).permit(:fullname, :email, :password)
  end

end
