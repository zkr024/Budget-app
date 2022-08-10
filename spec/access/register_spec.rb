require 'rails_helper'

RSpec.describe 'User', type: :feature do
  scenario 'Sign Up' do
    visit new_user_registration_path
    fill_in 'Full name', with: 'another test'
    fill_in 'Email', with: 'anothertest@test.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password Confirmation', with: 'password'
    click_button 'Sign up'
    sleep 1
    expect(current_path).to eql('/users')
  end
end
