class Api::UsersController < ApplicationController

    def index
        @users = User.all
        ## need to render json
    end

end