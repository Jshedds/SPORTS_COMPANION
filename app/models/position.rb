class Position < ApplicationRecord
  has_one :descriptions
  has_many :famous_players
  delegate :position_name, to: :sports
end
