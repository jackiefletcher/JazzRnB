class RenamePlacesIdForAccommodations < ActiveRecord::Migration
  def change
    rename_column :accommodations, :places_id, :place_id
  end
end
