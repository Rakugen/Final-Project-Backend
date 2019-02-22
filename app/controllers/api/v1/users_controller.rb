class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    if @user
      if curr_user.id == @user.id
        render json: @user
      else
        render json: {errors: "WHOA! This ain't your page, bud!"}
      end
    else
      render json: {errors: "User not found!"}
    end
  end

  def create
    @user = User.new(
      username: params[:username],
      password: params[:password]
    )

    if @user.save
      token = encode_token(@user.id)

      render json: {user: UserSerializer.new(@user), token: token}
    else
      render json: {errors: @user.errors.full_messages}
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user, status: :accepted
  end

  def login
    @users = User.all
    @user = @users.find_by(login_params)

    render json: @user, status: :ok
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

  def login_params
    params.require(:user).permit(:username, :password)
  end
end
