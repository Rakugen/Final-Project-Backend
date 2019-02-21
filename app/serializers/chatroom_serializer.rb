class ChatroomSerializer < ActiveModel::Serializer
  has_many :messages
  has_many :joins
  has_many :users, through: :joins
  attributes :name, :admin_id, :description
end
