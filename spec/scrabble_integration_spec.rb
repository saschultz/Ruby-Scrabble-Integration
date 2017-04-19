require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('processes the user entry and returns the scrabble score for the word') do
    visit('/')
    fill_in('word', :with => 'Queen')
    click_button('Score')
    expect(page).to have_content('14')
  end
end
