require "rails_helper"

describe User do
	user = FactoryGirl.build(:user)
	# underage_user = build(:underage_user)
  it "should have a name" do
  	expect(user.name).to eq("Ryan Snodgrass")
  end
  it "should have an email" do
  	expect(user.email).to eq("res0428@yahoo.com")
  end

   
end