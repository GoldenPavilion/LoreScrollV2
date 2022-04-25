class Api::SettingsController < ApplicationController
    def index
        @settings = Setting.all
        render json: @settings
    end

    def show
        @setting = Setting.find(params[:id])
        render json: @setting
    end

    def create
        @setting = Setting.new(setting_params)

        if @setting.save
            render json: @setting, status: :created, location: @setting
        else
            render json: @setting.errors, status: :unprocessable_entity
        end
    end

    private

    def setting_params
        params.require(:setting).permit(:name, :summary)
    end

end