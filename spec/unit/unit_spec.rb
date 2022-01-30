# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(
      title: 'harry potter',
      author: 'j.k. rowling',
      price: 50,
      publish_date: "2017-01-29"
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    subject.author = nil
    subject.price = nil
    subject.publish_date = nil
    expect(subject).not_to be_valid
  end
end