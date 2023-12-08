class Position < ApplicationRecord
  has_one :description, dependent: :destroy
  has_one :famous_player, dependent: :destroy

  validates :positions_name, presence: true
  validates :positions_tag, presence: true
  delegate :individual_milestones, :team_trophies_won, :teams_countries, :famous_player_name, to: :famous_player
  delegate :overview_of_position, :primary_objectives, :strengths, :weaknesses, to: :description

  accepts_nested_attributes_for :description, :famous_player
end
