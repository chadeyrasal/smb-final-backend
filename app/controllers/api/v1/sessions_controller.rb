class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      render json: user
    else
      render json: {
        error: 'Invalid credentials'
      }
    end
  end

  def get_current_user
    if logged_in?
      render json: current_user
    else
      render json: {
        error: 'no one logged in'
      }
    end
  end

  def destroy
    session.clear
    render json: {
      notice: 'seccessfully logged out'
    }, status: :ok
  end

end
