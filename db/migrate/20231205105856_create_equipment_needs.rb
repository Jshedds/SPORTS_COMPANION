class CreateEquipmentNeeds < ActiveRecord::Migration[7.1]
  def change
    create_table :equipment_needs do |t|
      t.string :footwear
      t.string :required_equipment
      t.text :safety_gear
      t.text :infrastructure
      t.string :clothing
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
