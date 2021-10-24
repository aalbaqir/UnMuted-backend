class LoveSerializer < ActiveModel::Serializer
  attributes :id, :love_reaction
  has_one :news_article
  has_one :user
end
