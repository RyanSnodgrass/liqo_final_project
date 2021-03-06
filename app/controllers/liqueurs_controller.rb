class LiqueursController < ApplicationController
	before_action :authenticate_user!
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
		redirect_to user_liqueurs_path(:anchor => "liqueur_#{@liqueur.id}")

	end

	# matches the clicked liqueur to the db,
	# removes it from the current_user's ingredients_users join table
	# redirects back to previous view(should be liqueurs index)
	def destroy
		@liqueur = Ingredient.find(params[:id]) # match the liqueur in the db from the liqueur in the view
		# @user = current_user
		current_user.ingredients.delete @liqueur
		remove_recipe(@liqueur)
		redirect_to user_liqueurs_path(:anchor => "liqueur_#{@liqueur.id}")
	end

	def ingredient_params
		params.require(:liqueur).permit!
	end
end