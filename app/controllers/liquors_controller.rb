class LiquorsController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@liquors = Ingredient.liquors
	end
	def show
		@liquor = Ingredient.find(params[:id])
	end

	# matches the clicked liquor to the db,
	# adds it to the current_user's ingredients_users join table
	# redirects back to previous view(should be liquors)
	def create
		@liquor = Ingredient.find(params[:id]) # match the liquor in the db from the liquor in the view
		@user = current_user # set the current user
		# @user.ingredients.build
		# debugger
		@user.ingredients << @liquor
		# debugger
		redirect_to :back
	end

	# matches the clicked liquor to the db,
	# removes it from the current_user's ingredients_users join table
	# redirects back to previous view(should be liquors)
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