class RenameNameToFamousPlayerNameInFamousPlayers < ActiveRecord::Migration[7.1]
  def change
    rename_column :famous_players, :name, :famous_player_name
  end
end
