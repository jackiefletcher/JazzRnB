require 'rails_helper'

describe "the delete an accommodation process" do

  it "deletes an accommodation" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    place = FactoryGirl.create(:place)
    accommodation = FactoryGirl.create(:accommodation)
    visit place_accommodation_path(place, accommodation)
    # save_and_open_page
    click_on 'Delete Accommodation'
    # expect(page).to have_content 'Deleted'
  end
end
