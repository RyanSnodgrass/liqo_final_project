class MixersController < ApplicationController
	before_action :authenticate_user!
	def index
		@mixers = Ingredient.mixers
	end
	def show
		@mixer = Ingredient.find(params[:id])
	end

	# matches the clicked mixer to the db,
	# pushes it to the current_user's ingredients_users join table
	# redirects back to previous view(should be mixers)
	def create
		@mixer = Ingredient.find(params[:id]) # match the mixer in the db from the mixer in the view
		@user = current_user # set the current user
		# @user.ingredients.build
		# debugger
		@user.ingredients << @mixer
		# debugger
		redirect_to :back
	end

	# matches the clicked mixer to the db,
	# removes it from the current_user's ingredients_users join table
	# redirects back to previous view(should be mixers)
	def destroy
		@mixer = Ingredient.find(params[:id]) # match the mixer in the db from the mixer in the view
		@user = current_user
		@user.ingredients.delete @mixer
		redirect_to :back
	end
end