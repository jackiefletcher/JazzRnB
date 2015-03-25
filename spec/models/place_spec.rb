require 'rails_helper'

describe Place do
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should validate_presence_of :country }
end
