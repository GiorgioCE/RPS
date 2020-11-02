require 'spec_helper'

feature 'register name' do
  scenario 'register and see my name' do
    visit '/'
    fill_in 'name', with: 'Giorgio'
    click_button "Submit"
    expect(page).to have_content 'Giorgio'
  end
end
