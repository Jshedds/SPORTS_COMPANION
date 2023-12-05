class FamousPlayer < ApplicationRecord
  belongs_to :positions

  validates :name, presence: true, uniqueness: true
  validates :trohpies_won, presence: true
  validates :teams_countries, presence: true, uniqueness: true
end
