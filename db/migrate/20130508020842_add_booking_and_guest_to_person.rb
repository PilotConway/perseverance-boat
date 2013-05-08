class AddBookingAndGuestToPerson < ActiveRecord::Migration
  def change
    change_table :people do |t|
        t.integer :booking_id
        t.integer :guest_id
    end
  end
end
