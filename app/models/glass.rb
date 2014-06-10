class Glass < ActiveRecord::Base
	has_many :users, through: :user_owned_glasses
	has_many :recipes
end