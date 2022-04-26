class Api::StoriesController < ApplicationController
    def index
        @stories = Story.all
        render json: @stories
    end

    def show
        @story = Story.find(params[:id])
        render json: @story
    end

    def create
        @story = Story.new(story_params)

        if @story.save
            render json: @story, status: :created, location: @story
        else
            render json: @story.errors, status: :unprocessable_entity
        end
    end

    private

    def story_params
        params.require(:story).permit(:title, :genre, :story_type, :summary)
    end

end