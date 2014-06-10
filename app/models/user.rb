class User < ActiveRecord::Base
	has_and_belongs_to_many :ingredients
	has_many :glasses, through: :user_owned_glasses
	has_many :notes
end