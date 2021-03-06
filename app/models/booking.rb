class Booking < ActiveRecord::Base
  after_update :getSpotsAvailable
  after_initialize :getSpotsAvailable
  attr_accessible :end, :num_people, :start
  has_one :destination
  has_many :guests
  has_many :people, :through => :guests
  validates_associated :guests

  def getSpotsAvailable
    if num_people && people 
      @spots_available = num_people - people.overthree.length 
    else 
      @spots_available = 0
    end
  end

  def areSpotsAvailable
    if @spots_available > 0 
      true
    else 
      false
    end
  end 

  def as_json(options={})
      super(:methods => :title)
  end

  def title
    if @spots_available == 1 
      "#{@spots_available} Spot Available"
    else 
      "#{@spots_available} Spots Available"
    end
  end
end
