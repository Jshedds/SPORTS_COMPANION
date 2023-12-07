class EquipmentNeedsController < ApplicationController
  def create
    @equipment_need = equipment_need.new(equipneed_params)
    authorize @equipment_need
    if @equipment_need.save
      redirect_to @sport
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    authorize @equipment_need
    if @equipment_need.update(equipneed_params)
      redirect_to @equipment_need, notice: "Equipment needed was succesfully updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def equipneed_params
    params.require(@equipment_need).permit(:footwear, :required_equipment, :safety_gear, :infrastructure, :clothing)
  end
end
