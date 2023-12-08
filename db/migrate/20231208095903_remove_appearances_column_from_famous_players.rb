class RemoveAppearancesColumnFromFamousPlayers < ActiveRecord::Migration[7.1]
  def change
    remove_column :famous_players, :appearances
    add_column :famous_players, :individual_milestones, :string
  end
  change_table :famous_players do |t|
    t.change :trophies_won, :string
  end
end
