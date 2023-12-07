class EquipmentNeedsController < ApplicationController
  def create
    authorize @equipment_need
  end

  def update
    authorize @equipment_need
  end
end
