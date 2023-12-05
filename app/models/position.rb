class Position < ApplicationRecord
  has_one :description
  has_many :famous_players

  delegate :appearances, :trophies_won, :teams_countries, :name, to: :famous_player
  delegate :overview_of_position, :primary_objectives, :strengths, :weaknesses, to: :description
end
