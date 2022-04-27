class Setting < ApplicationRecord
    has_many :stories
    has_many :characters
    belongs_to :user
end
