class Chatroom < ApplicationRecord
  belongs_to :sport
  has_many :messages, dependent: :destroy
  has_one_attached :photo
end
