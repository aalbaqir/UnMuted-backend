class ProfileSerializer < ActiveModel::Serializer
  attributes :picture, :name, :email, :country, :member_since, :user_id

  belongs_to :user
end
