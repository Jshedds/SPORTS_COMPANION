class Description < ApplicationRecord
  belongs_to :positions
end
class Description < ApplicationRecord
  belongs_to :positions

  validates :overview_of_position, presence: true, uniqueness: true
  validates :primary_objectives, presence: true
  validates :strengths, presence: true
  validates :weaknesses, presence: true
end
