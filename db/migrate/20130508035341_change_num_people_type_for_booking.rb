class ChangeNumPeopleTypeForBooking < ActiveRecord::Migration
  def up
    change_column :bookings, :num_people, :integer
  end

  def down
    change_column :bookings, :num_people, :string
  end
end
