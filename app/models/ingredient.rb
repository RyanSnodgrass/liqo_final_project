class Ingredient < ActiveRecord::Base
	require 'carrierwave/orm/activerecord'
	# mount_uploader :avatar, AvatarUploader

	has_and_belongs_to_many :users
	has_and_belongs_to_many :recipes

	scope :liquors, -> { where(i_type: 'liquor')}
	scope :mixers,  -> { where(i_type: 'mixer') }
	scope :liqeurs, -> { where(i_type: 'liqeur') }
end