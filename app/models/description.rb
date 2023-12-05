class Description < ApplicationRecord
  belongs_to :positions
  delegate :overview_of_position, :primary_objectives, :strengths, :weaknesses, to: :positions
end
