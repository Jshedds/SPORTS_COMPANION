class FamousPlayer < ApplicationRecord
  belongs_to :position
  has_one_attached :photo

  validates :famous_player_name, presence: true
  validates :team_trophies_won, presence: true
  validates :teams_countries, presence: true
  validates :individual_milestones, presence: true
end
