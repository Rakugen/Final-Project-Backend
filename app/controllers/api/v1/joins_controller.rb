class Api::V1::JoinsController < ApplicationController
  def index
    @joins = Join.all
    render json: @joins
  end

  def show
    @join = Join.find(params[:id])
    render json: @join, status: :ok
  end

  def create
    @join = Join.find_or_create_by(join_params)
    render json: @join, status: :created
  end

  def update
    @join = Join.find(params[:id])
    @join.update(join_params)
    render json: @join, status: :accepted
  end

  def destroy
    @join = Join.find(params[:id])
    @join.destroy
  end

  private
  def join_params
    params.require(:join).permit(:user_id, :chatroom_id, :pending)
  end
end
