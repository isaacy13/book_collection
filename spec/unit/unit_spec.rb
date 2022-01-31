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
  
  context 'valid properties' do 
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  end

  context 'nil properties' do
    it 'is not valid without a name' do
      subject.title = nil
      expect(subject).not_to be_valid
    end
  
    it 'is not valid without an author' do
      subject.author = nil
      expect(subject).not_to be_valid
    end
  
    it 'is not valid without a price' do
      subject.price = nil
      expect(subject).not_to be_valid
    end
  
    it 'is not valid without a date' do
      subject.publish_date = nil
      expect(subject).not_to be_valid
    end
  end

  context 'invalid properties' do
    it 'is not valid to only have spaces in title' do 
      subject.title = "    "
      if (subject.title.blank?)
        expect(subject).not_to be_valid
      end
    end

    it 'is not valid to only have spaces in author name' do 
      subject.author = "        "
      if (subject.author.blank?)
        expect(subject).not_to be_valid
      end
    end

    it 'is not valid to have negative price' do 
      subject.price = -5
      expect(subject).not_to be_valid
    end
  end

end