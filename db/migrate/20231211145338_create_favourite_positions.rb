class CreateFavouritePositions < ActiveRecord::Migration[7.1]
  def change
    create_table :favourite_positions do |t|
      t.references :position, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
