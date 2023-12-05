class CreateFamousPlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :famous_players do |t|
      t.integer :appearances
      t.integer :trophies_won
      t.string :teams_countries

      t.timestamps
    end
  end
end
