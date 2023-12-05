class AddNameFamousPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :famous_players, :name, :string
  end
end
