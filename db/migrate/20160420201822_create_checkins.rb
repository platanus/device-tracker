class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.string :device_type
      t.string :device_name
      t.string :user_name
      t.timestamps null: false
    end
  end
end
