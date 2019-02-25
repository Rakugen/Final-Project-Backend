class MessageSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :chatroom
  attributes :username, :user_id, :chatroom_id, :message
end
