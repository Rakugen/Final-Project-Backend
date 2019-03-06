class MessageSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :chatroom
  attributes :id, :color, :username, :user_id, :chatroom_id, :message_content, :created_at
end
