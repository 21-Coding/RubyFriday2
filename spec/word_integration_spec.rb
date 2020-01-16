require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and take you to the erb file of new_word') do
    visit('/words/#{word.id}')
    click_on('Add New Word')
    fill_in('word_name', :with => 'hello')
    click_on('Add')
    expect(page).to have_content('hello')
  end
end
