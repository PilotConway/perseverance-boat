class Destination < ActiveRecord::Base
  attr_accessible :description, :name
  has_one :coordinate
  belongs_to :booking
end
