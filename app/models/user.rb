class User < ApplicationRecord
  has_many :messages
  has_many :joins
  has_many :chatrooms, through: :joins
end
