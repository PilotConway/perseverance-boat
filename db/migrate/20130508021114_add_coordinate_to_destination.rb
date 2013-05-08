class AddCoordinateToDestination < ActiveRecord::Migration
  def change
    change_table :destinations do |t|
      t.integer :coordinate_id
    end
  end
end
