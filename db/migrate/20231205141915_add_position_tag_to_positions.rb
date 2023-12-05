class AddPositionTagToPositions < ActiveRecord::Migration[7.1]
  def change
    add_column :positions, :positions_tag, :string
  end
end
