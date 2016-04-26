class AddLocationErrorToCheckins < ActiveRecord::Migration
  def change
    add_column :checkins, :location_error, :integer
  end
end
