class Story < ApplicationRecord
    belongs_to :user
    belongs_to :setting
end
