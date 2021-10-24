class SadSerializer < ActiveModel::Serializer
  attributes :id, :sad_reaction
  has_one :news_article
  has_one :user
end
