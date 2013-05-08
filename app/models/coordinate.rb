class Coordinate < ActiveRecord::Base
  attr_accessible :azimuth, :elevation, :latitude, :longitude
  belongs_to :destination
end
