class Person < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :under_three, :phone, :preferred_contact
  has_many :guests 
  has_many :bookings, :through => :guests
  has_one :role
  validates_associated :guests

  scope :underthree, where(:under_three=>true)
  scope :overthree, where(:under_three=>false)

end
