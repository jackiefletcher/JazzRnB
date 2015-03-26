require 'rails_helper'

describe "the edit an accommodation process" do

  it "edits a accommodation" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    place = FactoryGirl.create(:place)
    accommodation = FactoryGirl.create(:accommodation)
    visit place_accommodation_path(place, accommodation)
    click_on 'Edit Accommodation'
    fill_in 'Name', :with =>'Creampuff!'
    fill_in 'Description', :with =>'sample description, great clean place!'
    fill_in 'Housing type', :with =>'house'
    fill_in 'Guests', :with => 3
    fill_in 'Price', :with => 250
    click_on 'Create Accommodation'
    expect(page).to have_content 'updated'
  end

  it "gives error when no name is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    place = FactoryGirl.create(:place)
    accommodation = FactoryGirl.create(:accommodation)
    visit place_accommodation_path(place, accommodation)
    click_on 'Edit Accommodation'
    fill_in 'Name', :with =>''
    fill_in 'Description', :with =>'sample description, great clean place!'
    fill_in 'Housing type', :with =>'house'
    fill_in 'Guests', :with => 3
    fill_in 'Price', :with => 250
    click_on 'Create Accommodation'
    expect(page).to have_content 'errors'
  end

end
