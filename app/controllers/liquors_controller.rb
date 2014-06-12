class LiquorsController < ApplicationController
	def show
		@liquor = Ingredient.find(params[:id])
	end
end