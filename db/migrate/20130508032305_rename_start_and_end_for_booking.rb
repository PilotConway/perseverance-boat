class RenameStartAndEndForBooking < ActiveRecord::Migration
  def change
    rename_column :bookings, :start_time, :start
    rename_column :bookings, :end_time, :end
  end
end
