class Api::SettingsController < ApplicationController
    def index
        @settings = Setting.all
        render json: @settings
    end

    def show
        @setting = Setting.find(params[:id])
        render json: @setting
    end
end