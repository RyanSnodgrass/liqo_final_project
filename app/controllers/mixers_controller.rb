class MixersController < ApplicationController
	def index
		@mixers = Ingredient.mixers
	end
	def show
		@mixer = Ingredient.find(params[:id])
	end
end