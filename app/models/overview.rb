class Overview < ApplicationRecord
  belongs_to :sport

  delegate :short_description, :game_objective, :governing_body_url, to: :sport
end
