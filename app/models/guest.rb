class Guest < ActiveRecord::Base
  attr_accessible :booking_id, :person_id
  belongs_to :person
  belongs_to :booking
end
