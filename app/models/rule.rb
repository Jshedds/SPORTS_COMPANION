class Rule < ApplicationRecord
  belongs_to :sport

  # rubocop:disable Layout/LineLength
  validates :game_duration, :scoring, :player_per_team, :referees, :most_important_rules, :field_size, :field_type, presence: true
  # rubocop:enable Layout/LineLength
end
