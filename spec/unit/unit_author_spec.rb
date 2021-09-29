# location: spec/unit/unit_author_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Pride and Prejudice', author: 'Jane Austen', price: 12, published_date: '1813-01-28')
  end

  it 'is valid with valid author' do
    expect(subject).to be_valid
  end

  it 'is not valid without an author name' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end