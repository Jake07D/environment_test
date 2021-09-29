# location: spec/unit/unit_published_date_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Pride and Prejudice', author: 'Jane Austen', price: 12, published_date: '1813/01/28')
  end

  it 'is valid with valid date' do
    expect(subject).to be_valid
  end

  it 'is not valid without a date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end