require 'rails_helper'

describe "the edit a place process" do

  it "edits a place" do
    visit places_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    place = FactoryGirl.create(:place)
    visit place_path(place)
    click_on 'Edit'
    fill_in 'City', :with => "Unicorndom"
    fill_in 'State', :with => "Inebriation"
    fill_in 'Country', :with => "Zanadoo"
    click_on 'Create Place'
    expect(page).to have_content 'successfully'
  end

  it "gives error when no city is entered" do
    visit places_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    place = FactoryGirl.create(:place)
    visit place_path(place)
    click_on 'Edit'
    fill_in 'City', :with => ""
    fill_in 'State', :with => "Inebriation"
    fill_in 'Country', :with => "Zanadoo"
    click_on 'Create Place'
    expect(page).to have_content 'errors'
  end

  it "gives error when no state is entered" do
    visit places_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    place = FactoryGirl.create(:place)
    visit place_path(place)
    click_on 'Edit'
    fill_in 'City', :with => "Unicorndom"
    fill_in 'State', :with => ""
    fill_in 'Country', :with => "Zanadoo"
    click_on 'Create Place'
    expect(page).to have_content 'errors'
  end

end
