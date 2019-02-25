class JoinSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :chatroom
  attributes :user_id, :chatroom_id, :pending
end
