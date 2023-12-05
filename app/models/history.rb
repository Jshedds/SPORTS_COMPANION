class History < ApplicationRecord
  belongs_to :sport

  delegate :invented, :creator, :country_of_origin, :most_successful_teams, :milestones, to: :sport
end
