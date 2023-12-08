class RenameTrophiesWonToTeamTrophiesWonInFamousPlayers < ActiveRecord::Migration[7.1]
  def change
    rename_column :famous_players, :trophies_won, :team_trophies_won
  end
end
