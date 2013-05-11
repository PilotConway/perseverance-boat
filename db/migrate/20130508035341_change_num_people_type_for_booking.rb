class ChangeNumPeopleTypeForBooking < ActiveRecord::Migration
  def up
    remove_column :bookings, :num_people
    add_column :bookings, :num_people, :integer
  end

  def down
    remove_column :bookings, :num_people
    add_column :bookings, :num_people, :string
  end
end
