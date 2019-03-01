class MessageSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :chatroom
  attributes :id, :username, :user_id, :chatroom_id, :message_content, :created_at
end
