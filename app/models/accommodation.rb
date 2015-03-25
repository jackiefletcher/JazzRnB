class Accommodation < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :type, :presence => true
  validates :guests, :presence => true
  validates :price, :presence => true
end
