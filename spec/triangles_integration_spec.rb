require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes user entry and returns the type of triangle') do
    visit('/')
    fill_in('side_a', :with => 4)
    fill_in('side_b', :with => 4)
    fill_in('side_c', :with => 4)
    click_button('Is it a triangle?')
    expect(page).to have_content("It's an equilateral triangle.")
  end
end
