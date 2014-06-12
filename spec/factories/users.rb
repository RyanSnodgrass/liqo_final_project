FactoryGirl.define do
	factory :user, class: User do
		name "Ryan Snodgrass"
		birthday "1986-04-28"
		email "res0428@yahoo.com"
		password "password"
		password_confirmation "password"
	end
	factory :underage_user, class: User do
		name "Little Jimmy"
		birthday "1999-06-11"
		email "jimmy@example.com"
		password "password"
		password_confirmation "password"
	end
end
		
