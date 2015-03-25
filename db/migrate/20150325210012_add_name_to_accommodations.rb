class AddNameToAccommodations < ActiveRecord::Migration
  def change
    add_column :accommodations, :name, :string
  end
end
