class Ingredient < ActiveRecord::Base
	require 'carrierwave/orm/activerecord'
	# mount_uploader :avatar, AvatarUploader

	has_and_belongs_to_many :users
	has_and_belongs_to_many :recipes

	scope :liquor, -> { where(type: 'liquor') }
	scope :mixer, -> { where(type: 'mixer') }
end