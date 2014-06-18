require 'rails_helper'

include AuthenticationHelper

feature 'liqueurs' do
	let(:user) {FactoryGirl.create(:user)}
  
  it 'wont take me to main page without sign up' do
    visit '/users/1/liqueurs'
    expect(current_path).to eq('/users/sign_in')
  end

  it 'lets me in once logged in' do
    login(user)
    click_link('Continue onto the Site!')
    click_link('Liqueurs')
    expect(page).to have_css('ul li.active', :text => "Liqueurs")
  end
  it 'displays a liqueur' do
    login(user)
    click_link('Continue onto the Site!')
    click_link('Liqueur')
    expect(page).to have_content('Amaretto', visible: false)
  end 
  it 'selects a liqueur' do
    login(user)
    click_link('Continue onto the Site!')
    click_link('Liqueur')
  	click_link('Amaretto')
    expect(page).to have_css('div.panel.panel-success', :text => 'Amaretto')
  end
  it 'deselects a liqueur' do
    login(user)
    click_link('Continue onto the Site!')
    click_link('Liqueurs')
    click_link('Amaretto')
    click_link('Amaretto')
    expect(page).to have_no_css("div.panel.panel-success")
  end
end