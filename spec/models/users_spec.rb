require "rails_helper"

describe User do
	user = FactoryGirl.build(:user)
	# underage_user = build(:underage_user)
  it "should have a name" do
  	expect(user.name).to eq("John Doe")
  end
  it "should have an email" do
  	expect(user.email).to eq("john@example.com")
  end

   
end