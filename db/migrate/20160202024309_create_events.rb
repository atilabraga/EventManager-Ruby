class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :short_description
      t.string :complete_description
      t.datetime :begin_date
      t.datetime :end_date
      t.timestamps null: false
    end
  end
end
