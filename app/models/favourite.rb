class Favourite < ApplicationRecord
  belongs_to :sport
  belongs_to :user

  validates :user_id, uniqueness: { scope: :sport_id }
end
