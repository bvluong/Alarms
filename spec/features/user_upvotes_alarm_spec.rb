require 'rails_helper'

feature 'user upvotes an alarm' do
  scenario 'successfully' do
    visit root_path

    find('ul > li:first-child')
    click_button('Upvote', match: :first)
    expect(page).to have_css ".alarms li h4", text: "1"
  end
end
