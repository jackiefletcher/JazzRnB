class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.integer 'places_id'
      t.string 'description'
      t.string 'type'
      t.integer 'guests'
      t.integer 'price'

      t.timestamps

    end
  end
end
