class Rule < ApplicationRecord
  belongs_to :sport

  # rubocop:disable Layout/LineLength
  delegate :game_duration, :scoring, :player_per_team, :referees, :most_important_rules, :field_size, :field_type, to: :sport
  validates :game_duration, :scoring, :player_per_team, :referees, :most_important_rules, :field_size, :field_type, presence: true
  # rubocop:enable Layout/LineLength
end
