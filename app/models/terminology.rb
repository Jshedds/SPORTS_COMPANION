class Terminology < ApplicationRecord
  belongs_to :sport

  delegate :most_important_terms, to: :sport
end
