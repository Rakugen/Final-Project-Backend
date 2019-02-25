class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true

  has_many :messages
  has_many :joins
  has_many :chatrooms, through: :joins
end
