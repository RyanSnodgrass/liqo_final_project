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
    expect(page).to have_css('ul li.active.liquors')
  end
  it 'displays a liquor' do
  	login(user)
    click_link('Continue onto the Site!')
    expect(page).to have_content('Vodka', visible: false)
  end
  xit 'selects a liquor' do
  	login(user)
  	click_link('Continue onto the Site!')
  	click_link('Smirnoff vodka')

  end
end