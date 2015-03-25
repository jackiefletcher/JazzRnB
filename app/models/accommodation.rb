class Accommodation < ActiveRecord::Base
  validates :description, :presence => true
  validates :type, :presence => true
  validates :guests, :presence => true
  validates :price, :presence => true
end
