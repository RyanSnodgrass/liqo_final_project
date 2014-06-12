class LiquorsController < ApplicationController
	def index
		@liquors = Ingredient.liguor
	end
end