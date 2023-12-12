class FavouritePosition < ApplicationRecord
  belongs_to :position
  belongs_to :user

  validates :user_id, uniqueness: { scope: :position_id }
end
