require 'rails_helper'

RSpec.describe 'signup page', type: :feature do
  scenario 'signup page' do
    visit 'signup'
    fill_in 'form-name', with: 'user1'

    click_button 'Create my account'
    expect(page).to have_content('Account created!')
    expect(page).to have_selector('nav a', text: 'Log out')
  end
end
