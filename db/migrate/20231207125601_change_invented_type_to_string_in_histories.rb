class ChangeInventedTypeToStringInHistories < ActiveRecord::Migration[7.1]
  change_table :histories do |t|
    t.change :invented, :string
  end
end
