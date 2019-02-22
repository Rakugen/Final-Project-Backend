class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.all
    render json: @messages
  end

  def show
    @message = Message.find(params[:id])
    render json: @message, status: :ok
  end

  def create
    @message = Message.find_or_create_by(message_params)
    # @message.save
    render json: @message, status: :created
  end

  def update
    @message = Message.find(params[:id])
    @message.update(message_params)
    render json: @message, status: :accepted
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
  end

  private
  def message_params
    params.require(:message).permit(:username, :user_id, :chatroom_id, :message)
  end
end
