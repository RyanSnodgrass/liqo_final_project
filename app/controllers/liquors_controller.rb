class LiquorsController < ApplicationController
	before_action :authenticate_user!
	def index
		@liquors = Ingredient.liquors
	end
	def show
		@liquor = Ingredient.find(params[:id])
	end
end