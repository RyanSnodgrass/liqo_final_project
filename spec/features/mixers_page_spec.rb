require 'rails_helper'

include AuthenticationHelper

feature 'mixers' do
	let(:user) {FactoryGirl.create(:user)}
  
  it 'wont take me to main page without sign up' do
    visit '/users/1/mixers'
    expect(current_path).to eq('/users/sign_in')
  end

  it 'lets me in once logged in' do
    login(user)
    click_link('Continue onto the Site!')
    click_link('Mixers')
    expect(page).to have_css('ul li.active', :text => "Mixers")
  end
  it 'displays a mixer' do
    login(user)
    click_link('Continue onto the Site!')
    click_link('Mixers')
    expect(page).to have_content('Eggs', visible: false)
  end 
  it 'selects a mixer' do
    login(user)
    click_link('Continue onto the Site!')
    click_link('Mixers')
  	click_link('Eggs')
    expect(page).to have_css('div.panel.panel-success', :text => 'Eggs')
  end
  it 'deselects a mixer' do
    login(user)
    click_link('Continue onto the Site!')
    click_link('Mixers')
    click_link('Eggs')
    click_link('Eggs')
    expect(page).to have_no_css("div.panel.panel-success")
  end
end