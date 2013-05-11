class Person < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :over_three, :phone, :preferred_contact
  has_many :guests 
  has_many :bookings, :through => :guests
  has_one :role

  scope :overthree, where(:over_three=>true)
end
