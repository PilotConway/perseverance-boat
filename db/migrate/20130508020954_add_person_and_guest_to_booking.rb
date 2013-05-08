class AddPersonAndGuestToBooking < ActiveRecord::Migration
  def change
    change_table :bookings do |t|
        t.integer :people_id
        t.integer :guest_id
    end 
  end
end
