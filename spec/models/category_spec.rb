require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { Category.new(author_id: 1, name: 'sport') }

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'icon should be present' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end

  it 'author_id should be a number' do
    subject.author_id = 'nil'
    expect(subject).to_not be_valid
  end
end
