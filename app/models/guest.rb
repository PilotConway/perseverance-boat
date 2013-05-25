class Guest < ActiveRecord::Base
  attr_accessible :booking_id, :person_id
  belongs_to :person
  belongs_to :booking
  validate :checkAvailability

  def checkAvailability
    if person.over_three and not booking.areSpotsAvailable()
      errors.add(:alert, "There are no spots left on this booking.")
    end
  end
end