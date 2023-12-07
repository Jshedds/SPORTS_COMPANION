class AddReferencesToFamousPlayers < ActiveRecord::Migration[7.1]
  def change
    add_reference :famous_players, :position, foreign_key: true
  end
end
