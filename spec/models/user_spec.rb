require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
  User.new(full_name: 'Adriana', email: 'test@example.com', password: 'password', password_confirmation: 'password') end

  before { subject.save }

  it 'Name should be present' do
    subject.full_name = nil
    expect(subject).to_not be_valid
  end

  it 'email should be an integer' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'Entry should be valid' do
    user = User.new(full_name: 'Dany', email: 'Dany@example.com', password: 'password',
                    password_confirmation: 'password')
    expect(user).to be_valid
  end
end
