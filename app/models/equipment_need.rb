class EquipmentNeed < ApplicationRecord
  belongs_to :sport

  # delegate :footwear, :required_equipment, :safety_gear, :infrastructure, :clothing, to: :sport

  # validates :footwear, :required_equipment, :safety_gear, :infrastructure, :clothing, presence: true
end
