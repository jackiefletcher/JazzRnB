class RenameTypeInAccommodations < ActiveRecord::Migration
  def change
    rename_column :accommodations, :type, :housing_type
  end
end
