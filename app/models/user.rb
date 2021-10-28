class User < ApplicationRecord
    has_many :comments
    has_many :sad_reactions
    has_many :love_reactions
    has_many :likes
    has_many :dislikes

    has_secure_password
end
