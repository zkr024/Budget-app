require 'rails_helper'

RSpec.describe 'Category', type: :feature do
  before :each do
    @user = User.create(full_name: 'another test', email: 'anothertest@test.com', password: 'password',
                        password_confirmation: 'password')
    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  it 'renders the category index page' do
    expect(current_path).to eql('/categories')
  end

  it 'Has an button to add a category' do
    expect(page).to have_content('Add category')
  end

  it 'renders the page to add a category' do
    click_link 'Add category'
    expect(current_path).to eql('/categories/new')
  end
end
