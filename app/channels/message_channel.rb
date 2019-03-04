class MessageChannel < ApplicationCable::Channel
  def subscribed
    # byebug
    # stream_from "message_channel_#{params[:id]}"
    puts "********************************************************************Subscribing***************************************************"
    stream_for Chatroom.find_by(id: params[:id])
  end
  #
  def unsubscribed
    puts "/////////////////////////////////////////*DISCONNECTINGGGG/////////////////////////////////////////"
  #   # Any cleanup needed when channel is unsubscribed
    x = Chatroom.find(params[:id])
    x.unsubscribe()
  end
end
