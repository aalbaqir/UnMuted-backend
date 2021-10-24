class LikeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :news_article
  has_one :user
end
