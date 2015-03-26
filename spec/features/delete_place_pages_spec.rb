require 'rails_helper'

describe "the delete a place process" do

  it "deletes a place" do
    visit places_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    place = FactoryGirl.create(:place)
    visit place_path(place)
    click_on 'Delete'
    expect(page).to have_content 'Deleted'
  end

end
