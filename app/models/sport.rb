class Sport < ApplicationRecord
  # has_many SOMETHINGSOMETHING dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
