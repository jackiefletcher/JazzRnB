require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

describe 'the add a place process' do
  it 'adds a new place' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit places_path
    click_on 'Create New Place'
    fill_in 'City', :with => "Unicorndom"
    fill_in 'State', :with => "Inebriation"
    fill_in 'Country', :with => "Zanadoo"
    click_on 'Create Place'
    expect(page).to have_content 'saved'
  end

  it 'gives an error when no city, state, or country is entered ' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit places_path
    click_on 'Create New Place'
    click_on 'Create Place'
    expect(page).to have_content 'errors'
  end
end
