class RenamePositionNameToPositionsNameInPositions < ActiveRecord::Migration[7.1]
  def change
    rename_column :positions, :position_name, :positions_name
  end
end
