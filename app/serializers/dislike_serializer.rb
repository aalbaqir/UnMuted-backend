class DislikeSerializer < ActiveModel::Serializer
  attributes :id, :dislike
  has_one :news_article
  has_one :user
end
