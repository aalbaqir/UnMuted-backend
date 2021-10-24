class NewsArticle < ApplicationRecord
    has_many :comments 
    has_many :users, through: :comments
    has_many :sad_reactions
    has_many :love_reactions
    has_many :likes
    has_many :dislikes
end
