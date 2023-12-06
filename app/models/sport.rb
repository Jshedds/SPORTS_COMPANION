class Sport < ApplicationRecord
  # has_many SOMETHINGSOMETHING dependent: :destroy
  has_one :equipment_need, dependent: :destroy
  has_one :history, dependent: :destroy
  has_one :overview, dependent: :destroy
  has_one :rule, dependent: :destroy
  has_one :terminology, dependent: :destroy
  has_one :chatroom, dependent: :destroy
  has_many :positions, dependent: :destroy
  has_many :favourites, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  delegate :footwear, :required_equipment, :safety_gear, :infrastructure, :clothing, to: :equipment_need
  delegate :most_important_terms, to: :terminology
  delegate :game_duration, :scoring, :player_per_team, :referees, :most_important_rules, :field_size, :field_type, to: :rule
  delegate :short_description, :game_objective, :governing_body_url, to: :overview
  delegate :invented, :creator, :country_of_origin, :most_successful_teams, :milestones, to: :history
  delegate :positions_name, :positions_tag, to: :position
  accepts_nested_attributes_for :overview, :equipment_need, :history, :positions
end
