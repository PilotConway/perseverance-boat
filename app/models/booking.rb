class Booking < ActiveRecord::Base
  after_update :getSpotsAvailable
  after_initialize :getSpotsAvailable
  attr_accessible :end, :num_people, :start
  has_one :destination
  has_many :guests
  has_many :people, :through => :guests

  def getSpotsAvailable
    @spots_available = num_people - people.length
  end

  def as_json(options={})
      super(:methods => :title)
  end

  def title
    "#{@spots_available} Spots Available"
  end
end
