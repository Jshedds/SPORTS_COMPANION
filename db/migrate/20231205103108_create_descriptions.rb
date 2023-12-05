class CreateDescriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :descriptions do |t|
      t.text :overview_of_position
      t.text :primary_objectives
      t.text :strengths
      t.text :weaknesses

      t.timestamps
    end
  end
end
