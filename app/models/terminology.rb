class Terminology < ApplicationRecord
  belongs_to :sport

  validates :most_important_terms, presence: true
end
