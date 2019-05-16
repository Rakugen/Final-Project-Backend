class ApplicationController < ActionController::API
# Standard encoding/decoding jwt tokens using secret key "super_secret_key"
# to be inherited by all lower controllers. secret key is to be kept hidden in
# a future update for extra security.

  def encode_token(user_id)
    JWT.encode({user_id: user_id}, "super_secret_key")
  end

  def token
    request.headers["Authorization"]
  end

  def decode_token
    begin
      JWT.decode(token, "super_secret_key")[0]["user_id"]
    rescue
      nil
    end
  end

  def curr_user
    begin
      User.find_by(id: decode_token)
    rescue
      nil
    end
  end
end
