class Favourite < ApplicationRecord
  belongs_to :sports
  belongs_to :user
end
