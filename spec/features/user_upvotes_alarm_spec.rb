require 'rails_helper'

feature 'user creates alarms' do
  scenario 'successfully' do
    visit root_path

    click_on "Construction Noise"
    expect(page).to have_css ".alarms li h4", text: "1"
  end
end