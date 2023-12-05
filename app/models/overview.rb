class Overview < ApplicationRecord
  belongs_to :sport

  validates :short_description, :game_objective, :governing_body_url, presence: true
end
