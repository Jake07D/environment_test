# location: spec/feature/integration_published_date_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Pride and Prejudice'
    fill_in 'Author', with: 'Jane Austen'
	fill_in 'Price', with: 12
	fill_in 'book_published_date', with: '1813/01/28'
	# select '1813-01-28', :from => 'published_date' # does not work b/c not "select[able]"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('1813-01-28')
  end
end