require 'rails_helper'

feature 'user creates alarms' do
  scenario 'successfully' do
    visit root_path

    click_on "Add a new alarm"
    fill_in "Title", with: "Construction Noise"
    click_on "Submit"

    expect(page).to have_css ".alarms li", text: "Construction Noise"
  end
end
