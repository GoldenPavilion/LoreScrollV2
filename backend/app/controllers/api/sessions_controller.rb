class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      sesson[:user_id] = @user.id
      render json: @user
    else
      flash[:notify] = "Something went wrong. Try again!"
      render json: {
        error: "Invalid"
      }
    end
  end

  def destroy
  end
end
