class StorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :genre, :story_type, :summary, :user, :setting
end
