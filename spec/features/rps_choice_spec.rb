require 'spec_helper'

feature 'register name' do
  before do
    visit '/'
    fill_in 'name', with: 'Giorgio'
    click_button "Submit"
  end

  scenario 'See choices' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose one of the choices' do
    click_button 'Rock'
    expect(page).to have_content "You chose Rock"
  end
end
