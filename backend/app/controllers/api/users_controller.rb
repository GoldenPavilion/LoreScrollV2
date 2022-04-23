class Api::UsersController < ApplicationController

    def index
        @users = User.all
        ## need to render json
    end

    def show
        @user = User.find(params[:id])
        render json: User.new(@user)
    end
end