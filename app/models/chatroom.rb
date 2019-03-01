class Chatroom < ApplicationRecord
  validates :name, presence: true

  has_many :messages
  has_many :joins
  has_many :users, through: :joins
end
