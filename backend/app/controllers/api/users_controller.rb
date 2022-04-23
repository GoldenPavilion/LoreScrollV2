class Api::UsersController < ApplicationController

    def index
        @users = User.all
        ## need to render json
    end

    def show
        @user = User.find(params[:id])
        render json: User.new(@user)
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            render json: User.new(@user)
        else
            render json: {
                error: "Username and E-mail must be unique."
            }
        end
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password, :email, :penname)
    end

end