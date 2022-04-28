class User < ApplicationRecord
    has_secure_password

    has_many :stories
    has_many :settings

    validates :username, presence: true, uniqueness: true, length: { minimum: 7 }
end
