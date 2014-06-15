class LiqueursController < ApplicationController
	def index
		@liqueurs = Ingredient.liqueurs
	end
	def show
		@liqueur = Ingredient.find(params[:id])
	end

	# matches the clicked liqueur to the db,
	# adds it to the current_user's ingredients_users join table
	# redirects back to previous view(should be liqueurs)
	def create
		@liqueur = Ingredient.find(params[:id]) # match the liqueur in the db from the liqueur in the view
		# @user = current_user # set the current user
		# @user.ingredients.build
		# debugger
		current_user.ingredients << @liqueur
		# debugger
		redirect_to :back
	end

	# matches the clicked liqueur to the db,
	# removes it from the current_user's ingredients_users join table
	# redirects back to previous view(should be liqueurs index)
	def destroy
		@liqueur = Ingredient.find(params[:id]) # match the liqueur in the db from the liqueur in the view
		# @user = current_user
		current_user.ingredients.delete @liqueur
		redirect_to :back
	end

	def ingredient_params
		params.require(:liqueur).permit!
	end
end