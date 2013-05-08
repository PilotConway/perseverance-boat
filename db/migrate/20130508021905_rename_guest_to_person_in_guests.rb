class RenameGuestToPersonInGuests < ActiveRecord::Migration
    def change
      rename_column :guests, :guest_id, :person_id
    end
end
