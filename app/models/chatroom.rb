class Chatroom < ApplicationRecord
  belongs_to :sport
  has_many :messages
end
