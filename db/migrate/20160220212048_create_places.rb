class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :site
      t.string :latitude
      t.string :longitude
      t.timestamps null: false
    end
  end
end
