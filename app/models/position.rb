class Position < ApplicationRecord
  has_one :description
  has_many :famous_players

  validates :position_name, presence: true, uniqueness: true
  validates :positions_tag, presence: true, uniqueness: true
  delegate :appearances, :trophies_won, :teams_countries, :name, to: :famous_player
  delegate :overview_of_position, :primary_objectives, :strengths, :weaknesses, to: :description
end
