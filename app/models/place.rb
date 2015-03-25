class Place < ActiveRecord::Base
  validates :city, :presence => true
  validates :state, :presence => true
  validates :country, :presence => true
end
