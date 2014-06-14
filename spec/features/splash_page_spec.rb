# require 'spec_helper'
require 'rails_helper'

include AuthenticationHelper

feature 'Home' do
	let(:user) {FactoryGirl.create(:user)}
  it 'should stay on the page when not signed in' do
  	visit '/'
  	expect(current_path).to eq('/')
  end
  it 'should not have JavaScript errors', :js => true do
    visit '/'
    expect(page).not_to have_errors
  end
  it 'should take me to the sign in page' do
  	visit '/'
  	click_link('Login')
  	expect(current_path).to eq('/users/sign_in')
  end

  it 'should take me to the sign up page' do
  	visit '/'
  	click_link('Sign up')
  	expect(current_path).to eq('/users/sign_up')
  end

  # it 'signs me up' do
  #   visit '/'
  #   click_link('Sign up')
  #   fill_in "user[name]", with: user.name
  #   fill_in "user[email]", with: user.email
  #   # select('2011/01/01', :from => 'user[birthday]')
  #   fill_in "user[password]", with: user.password
  #   fill_in "user[password_confirmation]", with: user.password
  #   click_button "Sign up"
  #   expect(page).to have_content('Welcome! You have signed up successfully.')
  # end

  it 'logs me in' do
    login(user)
		expect(page).to have_content('Signed in successfully.')
	end

  # it 'takes me to splash page after log in' do
  #   login(user)
  #   expect(current_path).to eq('/')
  # end
	


end