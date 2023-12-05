class EquipmentNeed < ApplicationRecord
  belongs_to :sport

  delegate :footwear, :required_equipment, :safety_gear, :infrastructure, :clothing, to: :sport
end
