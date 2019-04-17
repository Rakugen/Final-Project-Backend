class Api::V1::ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
    render json: @chatrooms
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    render json: @chatroom, status: :ok
  end

  def create
    @chatroom = Chatroom.find_or_create_by(chatroom_params)
    render json: @chatroom, status: :created
  end

  def update
    @chatroom = Chatroom.find(params[:id])
    @chatroom.update(chatroom_params)
    render json: @chatroom, status: :accepted
  end

  def destroy
    @chatroom = Chatroom.find(params[:id])
    @chatroom.destroy
  end

  private
  def chatroom_params
    params.require(:chatroom).permit(:name, :admin_id, :description)
  end
end
