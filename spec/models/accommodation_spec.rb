require 'rails_helper'

describe Accommodation do
  it { should validate_presence_of :description }
  it { should validate_presence_of :type }
  it { should validate_presence_of :guests }
  it { should validate_presence_of :price }
  it { should validate_presence_of :name }
end
