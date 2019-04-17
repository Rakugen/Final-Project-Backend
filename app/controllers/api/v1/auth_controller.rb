class Api::V1::AuthController < ApplicationController
# Standard login procedures: if valid user is found & authentication passes
# then proceed with returning its user id and token
  def login
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      token = encode_token(@user.id)
      render json: {user: UserSerializer.new(@user), token: token}
    else
      render json: {errors: "WHOA! You dun goofed!"}
    end
  end

# Will attempt to find user if a token is present
  def get_user_from_token
      if curr_user
        render json: curr_user
      else
        render json: {errors: "WHOA! User not found!"}
      end
  end
end
