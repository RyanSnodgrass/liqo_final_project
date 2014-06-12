class Ingredient < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :recipes

	scope :liquor, -> { where(type: 'liquor') }
	scope :mixer, -> { where(type: 'mixer') }
end