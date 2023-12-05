class Rule < ApplicationRecord
  belongs_to :sport

  delegate :game_duration, :scoring, :player_per_team, :referees, :most_important_rules, to: :sport
  delegate :field_size, :field_type, to: :sport
end
