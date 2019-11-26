require_relative "../../app.rb"
require "spec_helper"

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end

  scenario 'fill name in, submit and see on screen' do
    visit('/')
    fill_in "p1_name", with: 'Andrew'
    fill_in "p2_name", with: 'Andrea'
    click_button 'Submit'
    expect(page).to have_content "Player 1 = Andrew, Player 2 = Andrea"
  end

end