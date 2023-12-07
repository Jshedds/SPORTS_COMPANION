class Chatroom < ApplicationRecord
  belongs_to :sport
  has_many :messages, dependent: :destroy
end
