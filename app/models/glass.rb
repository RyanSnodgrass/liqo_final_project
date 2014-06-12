class Glass < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	has_many :users, through: :user_owned_glasses
	has_many :recipes
end