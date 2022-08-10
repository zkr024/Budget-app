require 'rails_helper'

RSpec.describe Purchase, type: :model do
  subject { Purchase.new(author_id: 1, name: 'sport', amount: '5') }

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to be_valid
  end

  it 'author_id should be a number' do
    subject.author_id = 'nil'
    expect(subject).to_not be_valid
  end

  it 'expect to save the entry' do
    user = User.create(full_name: 'test test', email: 'test@test.com', password: 'password',
                       password_confirmation: 'password')
    transaction = Purchase.create(author_id: user.id, name: 'sport', amount: '5')
    expect(transaction.name).to eq 'sport'
  end
end
