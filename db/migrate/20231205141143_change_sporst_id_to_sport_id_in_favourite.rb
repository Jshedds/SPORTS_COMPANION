class ChangeSporstIdToSportIdInFavourite < ActiveRecord::Migration[7.1]
  def change
    rename_column :favourites, :sports_id, :sport_id
  end
end
