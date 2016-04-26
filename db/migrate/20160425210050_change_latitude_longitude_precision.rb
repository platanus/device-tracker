class ChangeLatitudeLongitudePrecision < ActiveRecord::Migration
  def change
    change_column :checkins, :latitude, :decimal, precision: 18, scale: 15
    change_column :checkins, :longitude, :decimal, precision: 18, scale: 15
  end
end
