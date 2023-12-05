class CreateHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :histories do |t|
      t.date :invented
      t.string :creator
      t.string :country_of_origin
      t.string :most_successful_teams
      t.text :milestones
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
