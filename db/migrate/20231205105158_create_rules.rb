class CreateRules < ActiveRecord::Migration[7.1]
  def change
    create_table :rules do |t|
      t.string :game_duration
      t.text :scoring
      t.integer :player_per_team
      t.integer :referees
      t.text :most_important_rules
      t.text :field_size
      t.string :field_type
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
