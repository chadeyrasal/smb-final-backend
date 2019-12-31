class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      render json: user
    else
      response = { user.errors.full_messages.to_sentence }
      render json: response,status: :unprocessable_entity
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
