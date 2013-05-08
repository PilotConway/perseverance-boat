class Booking < ActiveRecord::Base
  attr_accessible :end_time, :num_people, :start_time
  has_one :destination
  has_many :guests
  has_many :people, :through => :guests
end
