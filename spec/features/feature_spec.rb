require 'capybara/rspec'

# As a user
# So that I can keep a daily diary
# I want to be able to add a new Diary Entry
feature 'user adds a new diary entry' do
  scenario 'can complete a user-form' do
    visit '/'
    fill_in 'Title', with: 'First Entry'
    fill_in 'Entry', with: 'This is my first diary entry'
    click_button 'Save'
    expect(page).to have_content 'First Entry saved'
  end
end