class FamousPlayer < ApplicationRecord
  belongs_to :position

  validates :famous_player_name, presence: true
  validates :trophies_won, presence: true
  validates :teams_countries, presence: true

end
