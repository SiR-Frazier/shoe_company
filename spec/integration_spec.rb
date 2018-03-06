require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the store creation path', {:type => :feature} do
  it 'allows the user to create a store' do
    visit '/stores'
    fill_in('name', :with => 'Fred Meyer')
    click_button('Update')
    expect(page).to have_content('Fred Meyer')
  end
end

describe 'the store creation path', {:type => :feature} do
  it 'allows the user to create a store' do
    visit '/stores'
    fill_in('name', :with => 'Fred Meyer')
    click_button('Update')
    expect(page).to have_content('Fred Meyer')
  end
end
