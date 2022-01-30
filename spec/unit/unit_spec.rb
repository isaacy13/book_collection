# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end


RSpec.describe Author, type: :model do
  author = Author.new(title: 'j.k. rowling')

  it 'is valid with valid attributes' do
    expect(author).to be_valid
  end

  it 'is not valid without a name' do
    author.title = nil
    expect(author).not_to be_valid
  end
end


RSpec.describe Price, type: :model do
  price = Price.new(price: 50)

  it 'is valid with valid attributes' do
    expect(price).to be_valid
  end

  it 'is not valid when nil' do
    price.price = nil
    expect(price).not_to be_valid
  end
end


RSpec.describe Date, type: :model do
  date = Date.new(date: Time.new)

  it 'is valid with valid attributes' do
    expect(date).to be_valid
  end

  it 'is not valid when nil' do
    date.date = nil
    expect(date).not_to be_valid
  end
end