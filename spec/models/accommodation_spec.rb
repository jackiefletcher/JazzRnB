require 'rails_helper'

describe Accommodation do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :housing_type }
  it { should validate_presence_of :guests }
  it { should validate_presence_of :price }
end
