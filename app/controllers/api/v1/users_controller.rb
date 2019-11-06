class Api::V1::UsersController < ApplicationController

  before_action :set_user, only: [:show, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: { error: "There was an error creating this user" }
    end
  end

  def show
    render json: @user
  end

  def destroy
    @user.destroy
  end


  private

  def user_params
    params.require(:user).permit(:fullname, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
