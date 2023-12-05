class Position < ApplicationRecord
  has_one :descriptions
  has_many :famous_players

  validates :position_name, presence: true, uniqueness: true
  validates :positions_tag, presence: true, uniqueness: true
end
