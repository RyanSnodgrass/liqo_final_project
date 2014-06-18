require 'rails_helper'

include AuthenticationHelper

feature 'Liquors' do
	let(:user) {FactoryGirl.create(:user)}
  
  it 'wont take me to main page without sign up' do
    visit '/users/1/liquors'
    expect(current_path).to eq('/users/sign_in')
  end

it 'lets me in once logged in' do
    login(user)
    click_link('Continue onto the Site!')
    expect(page).to have_css('ul li.active', :text => "Liquor")
  end
  it 'displays a liquor' do
  	login(user)
    click_link('Continue onto the Site!')
    expect(page).to have_content('Vodka', visible: false)
  end 
  it 'selects a liquor' do
  	login(user)
  	click_link('Continue onto the Site!')
  	click_link('Smirnoff vodka')
    expect(page).to have_css('div.panel.panel-success')
  end
  it 'deselects a liquor' do
    login(user)
    click_link('Continue onto the Site!')
    click_link('Smirnoff vodka')
    click_link('Smirnoff vodka')
    expect(page).to have_no_css("div.panel.panel-success")
  end
end