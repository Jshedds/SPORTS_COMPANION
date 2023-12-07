class AddReferencesToDescriptions < ActiveRecord::Migration[7.1]
  def change
    add_reference :descriptions, :position, foreign_key: true
  end
end
