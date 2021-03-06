class Api::UsersController < ApplicationController

    def index
        @users = User.all
        render json: UserSerializer.new(@users)
    end

    def show
        @user = User.find(params[:id])
        render json: UserSerializer.new(@user)
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            render json: UserSerializer.new(@user), status: :created, location: @user
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