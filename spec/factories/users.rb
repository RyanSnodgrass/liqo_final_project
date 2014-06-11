FactoryGirl.define do
	factory :user, class: User do
		name "John Doe"
		birthday "1986-04-28"
		email "john@example.com"
		password "password"
		password_confirmation "password"
	end
	factory :underage_user, class: User do
		name "Jimmy Doe"
		birthday "1999-04-28"
		email "jimmy@example.com"
		password "password"
		password_confirmation "password"
	end
end
		
