require 'rails_helper'

RSpec.describe 'User', type: :feature do
  before(:all) do
    @user = User.create(full_name: 'new test', email: 'newtest@test.com', password: 'password',
                        password_confirmation: 'password')
  end
  scenario 'Sign In' do
    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    expect(current_path).to eql(categories_path)
  end
end
