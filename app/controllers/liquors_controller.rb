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
		@user.ingredients << @liquor
		# debugger
		# env["HTTP_REFERER"] += '#{liquor.id}'
		redirect_to user_liquors_path(:anchor => "liquor_#{@liquor.id}")
		#'/users/current_user.id/liquors#@liquor.id'
	end

	# matches the clicked liquor to the db,
	# removes it from the current_user's ingredients_users join table
	# redirects back to previous view(should be liquors)
	def destroy
		@liquor = Ingredient.find(params[:id]) # match the liquor in the db from the liquor in the view
		@user = current_user
		@user.ingredients.delete @liquor
		remove_recipe(@liquor)
		redirect_to user_liquors_path(:anchor => "liquor_#{@liquor.id}")
	end

	def ingredient_params
		params.require(:liquor).permit!
	end

end