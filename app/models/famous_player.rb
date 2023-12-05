class FamousPlayer < ApplicationRecord
  belongs_to :positions
  delegate :appearances, :trophies_won, :teams_countries, to: :positions
end
