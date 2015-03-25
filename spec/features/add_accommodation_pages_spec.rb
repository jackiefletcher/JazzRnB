require 'rails_helper'

describe 'the add an accommodation process' do
  it 'adds a new accommodation' do
    visit places_path
    place = FactoryGirl.create(:place)
    visit place_path(place)
    click_on 'Add Accommodation'
    fill_in 'Description', :with =>'sample description, great clean place!'
    fill_in 'Type', :with =>'house'
    fill_in 'Guests', :with => 3
    fill_in 'Price', :with => 250
    expect(page).to have_content 'saved'
  end
end
