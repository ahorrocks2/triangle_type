require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes user entry and returns the type of triangle') do
    visit('/')
    fill_in('side_a', :with => 2)
    fill_in('side_b', :with => 2)
    fill_in('side_c', :with => 3)
    click_button('Is it a triangle?')
    expect(page).to have_content("It's an isosceles triangle.")
  end
end
