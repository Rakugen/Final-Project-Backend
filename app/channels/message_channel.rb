class MessageChannel < ApplicationCable::Channel
# Finding unique chatroom and subscribing by its ID
  def subscribed
    stream_for Chatroom.find_by(id: params[:id])
  end

# Unsubscribing from chatroom when necessary by found ID
  def unsubscribed
    x = Chatroom.find(params[:id])
    x.unsubscribe()
  end
end
