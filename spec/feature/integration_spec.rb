# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path

    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'j.k. rowling'
    fill_in 'Price', with: 50
    select '2017', :from => 'book_publish_date_1i'
    select 'January', :from => 'book_publish_date_2i'
    select '29', :from => 'book_publish_date_3i'

    click_on 'commit'
    visit books_path

    expect(page).to have_content('harry potter')
    expect(page).to have_content('j.k. rowling')
    expect(page).to have_content(50)
    expect(page).to have_content("2017-01-29")
  end
end