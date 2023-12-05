class Sport < ApplicationRecord
  # has_many SOMETHINGSOMETHING dependent: :destroy
  has_one :equipment_need, :history, :overview, :rule, :terminology
  has_one :chatroom
  has_many :positions

  validates :name, presence: true, uniqueness: true

  delegate :footwear, :required_equipment, :safety_gear, :infrastructure, :clothing, to: :equipment_need
  delegate :most_important_terms, to: :terminology
  delegate :game_duration, :scoring, :player_per_team, :referees, :most_important_rules, :field_size, :field_type, to: :rule
  delegate :short_description, :game_objective, :governing_body_url, to: :overview
  delegate :invented, :creator, :country_of_origin, :most_successful_teams, :milestones, to: :history
  delegate :position_name, :positions_tag, to: :position
end
