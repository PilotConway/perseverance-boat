class CreateCoordinates < ActiveRecord::Migration
  def change
    create_table :coordinates do |t|
      t.float :latitude
      t.float :longitude
      t.float :elevation
      t.float :azimuth

      t.timestamps
    end
  end
end
