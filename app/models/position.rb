class Position < ApplicationRecord
  has_one :description, dependent: :destroy
  has_many :famous_players

  validates :positions_name, presence: true, uniqueness: true
  validates :positions_tag, presence: true, uniqueness: true
  delegate :appearances, :trophies_won, :teams_countries, :name, to: :famous_player
  delegate :overview_of_position, :primary_objectives, :strengths, :weaknesses, to: :description

  accepts_nested_attributes_for :description
end
