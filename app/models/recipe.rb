class Recipe < ActiveRecord::Base
	# mount_uploader :avatar, AvatarUploader
	# has_and_belongs_to_many :ingredients
	has_many :ingredients, through: :ingredient_lists
	has_many :notes
end