require 'rails_helper'

describe 'the add an accommodation process' do
  it 'adds a new accommodation' do
    visit places_path
    place = FactoryGirl.create(:place)
    visit place_path(place)
    click_on 'Add Accommodation'
    fill_in 'Name', :with =>'Creampuff!'
    fill_in 'Description', :with =>'sample description, great clean place!'
    fill_in 'Housing type', :with =>'house'
    fill_in 'Guests', :with => 3
    fill_in 'Price', :with => 250
    click_on 'Create Accommodation'
    expect(page).to have_content 'saved'
  end
end
