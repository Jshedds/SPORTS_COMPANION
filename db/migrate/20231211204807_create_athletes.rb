class CreateAthletes < ActiveRecord::Migration[7.1]
  def change
    create_table :athletes do |t|
      t.string :name
      t.text :details

      t.timestamps
    end
  end
end
