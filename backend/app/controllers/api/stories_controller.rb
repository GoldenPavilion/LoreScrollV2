class Api::StoriesController < ApplicationController
    def index
        @stories = Story.all
        render json: StorySerializer.new(@stories)
    end

    def show
        @story = Story.find(params[:id])
        render json: StorySerializer.new(@story)
    end

    def create
        @story = Story.new(story_params)

        if @story.save
            render json: StorySerializer.new(@story), status: :created, location: @story
        else
            render json: @story.errors, status: :unprocessable_entity
        end
    end

    private

    def story_params
        params.require(:story).permit(:title, :genre, :story_type, :summary)
    end

end