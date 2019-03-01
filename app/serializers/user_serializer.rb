class UserSerializer < ActiveModel::Serializer
  has_many :messages
  has_many :joins
  has_many :chatrooms, through: :joins
  attributes :id, :username
end
