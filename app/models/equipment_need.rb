class EquipmentNeed < ApplicationRecord
  belongs_to :sport

  validates :footwear, :required_equipment, :safety_gear, :infrastructure, :clothing, presence: true
end
