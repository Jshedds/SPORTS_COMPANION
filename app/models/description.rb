class Description < ApplicationRecord
  belongs_to :position

  validates :overview_of_position, presence: true
  validates :primary_objectives, presence: true
  validates :strengths, presence: true
  validates :weaknesses, presence: true

end
