require 'spec_helper'

feature 'Home' do
	let(:user) {FactoryGirl.build(:user)}
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
  it 'takes me to log in' do
  	visit '/'
  	click_link('Login')
  	fill_in "user[email]", with: user.email
		fill_in "user[password]", with: user.password
		click_button "Sign in"
		page.has_content?('Signed in successfully.')
	end
	# it 'takes me to sign up' do
	# 	visit '/'
	# 	click_link('Sign up')
	# 	fill_in "user[name]", with: user.name
	# 	fill_in "user[birthday]"
	# 	fill_in "user[email]", with: user.email
	# 	fill_in "user[password]", with: user.password
 #  end


end