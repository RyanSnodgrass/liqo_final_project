class LiquorsController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@liquors = Ingredient.liquors
	end
	def show
		@liquor = Ingredient.find(params[:id])
	end

	def create
		@liquor = Ingredient.find(params[:id]) # match the liquor in the db from the liquor in the view
		@user = current_user # set the current user
		# @user.ingredients.build
		# debugger
		@user.ingredients << @liquor
		# debugger
		redirect_to :back
	end

	def destroy
		@liquor = Ingredient.find(params[:id]) # match the liquor in the db from the liquor in the view
		@user = current_user
		@user.ingredients.delete @liquor
		redirect_to :back
	end

	def ingredient_params
		params.require(:liquor).permit!
	end

end