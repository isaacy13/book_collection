# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end


RSpec.describe 'Creating an author', type: :feature do
  scenario 'valid inputs' do
    visit new_author_path
    fill_in 'Title', with: 'j.k. rowling'
    click_on 'Create Author'
    visit authors_path
    expect(page).to have_content('j.k. rowling')
  end
end


RSpec.describe 'Creating a price', type: :feature do
  scenario 'valid inputs' do
    visit new_price_path
    fill_in 'Price', with: 50
    click_on 'Create Price'
    visit prices_path
    expect(page).to have_content(50)
  end
end

RSpec.describe 'Creating a PublishDate', type: :feature do
  time = "2017-01-29 21:14:00"

  scenario 'valid inputs' do
    visit new_publish_date_path
    select '2017', :from => 'publish_date_publish_date_1i'
    select 'January', :from => 'publish_date_publish_date_2i'
    select '29', :from => 'publish_date_publish_date_3i'
    select '21', :from => 'publish_date_publish_date_4i'
    select '14', :from => 'publish_date_publish_date_5i'
    click_on 'Create Publish date'
    visit publish_dates_path
    expect(page).to have_content(time)
  end
end