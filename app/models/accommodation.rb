class Accommodation < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :housing_type, :presence => true
  validates :guests, :presence => true
  validates :price, :presence => true
  belongs_to :place
end
