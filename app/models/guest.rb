class Guest < ActiveRecord::Base
  attr_accessible :booking_id, :person_id
  belongs_to :person
  belongs_to :booking
  validate :checkAvailability
  after_create :booking_notification

  def checkAvailability
    if not person.under_three and not booking.areSpotsAvailable()
      errors.add(:alert, "There are no spots left on this booking.")
    end
  end

  # Notify via email that a booking has been created. This email should go to 
  # perseverance@the-conways.com
  # We can also notify the guest who booked if they have an email
  def booking_notification
    BookingMailer.guest_books(booking, person).deliver
  end
end