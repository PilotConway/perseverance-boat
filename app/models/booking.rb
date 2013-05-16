class Booking < ActiveRecord::Base
  after_update :getSpotsAvailable
  after_initialize :getSpotsAvailable
  attr_accessible :end, :num_people, :start
  has_one :destination
  has_many :guests
  has_many :people, :through => :guests, after_add: :validateSpotsAvaiable

  def getSpotsAvailable
    if num_people && people 
      @spots_available = num_people - people.overthree.length 
    else 
      @spots_available = 0
    end
  end

  def areSpotsAvaiable
    if @spots_available > 0 
      true
    else 
      false
    end
  end 

  def validateSpotsAvaiable(person)
    if person.over_three
      areSpotsAvaiable
    else
      true
    end
  end

  def as_json(options={})
      super(:methods => :title)
  end

  def title
    "#{@spots_available} Spots Available"
  end
end
