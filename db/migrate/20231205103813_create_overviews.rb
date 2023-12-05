class CreateOverviews < ActiveRecord::Migration[7.1]
  def change
    create_table :overviews do |t|
      t.text :short_description
      t.text :game_objective
      t.string :governing_body_url
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
