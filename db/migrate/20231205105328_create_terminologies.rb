class CreateTerminologies < ActiveRecord::Migration[7.1]
  def change
    create_table :terminologies do |t|
      t.text :most_important_terms
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
