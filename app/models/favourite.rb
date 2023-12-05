class Favourite < ApplicationRecord
  belongs_to :sport
  belongs_to :user
end
