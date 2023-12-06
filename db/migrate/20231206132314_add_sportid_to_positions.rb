class AddSportidToPositions < ActiveRecord::Migration[7.1]
  def change
    add_reference :positions, :sport, foreign_key: true
  end
end
