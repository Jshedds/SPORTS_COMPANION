class FamousPlayer < ApplicationRecord
  belongs_to :position

  validates :famous_player_name, presence: true
  validates :team_trophies_won, presence: true
  validates :teams_countries, presence: true
  validates :individual_milestones, presence: true
end
