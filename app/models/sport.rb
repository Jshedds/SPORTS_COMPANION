class Sport < ApplicationRecord
  # has_many SOMETHINGSOMETHING dependent: :destroy
  has_one :equipment_need
  validates :name, presence: true, uniqueness: true
  delegate :footwear, :required_equipment, :safety_gear, :infrastructure, :clothing, to: :equipment_need
end
