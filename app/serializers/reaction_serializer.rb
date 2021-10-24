class ReactionSerializer < ActiveModel::Serializer
  attributes :id, :like, :dislike, :love, :sad
end
