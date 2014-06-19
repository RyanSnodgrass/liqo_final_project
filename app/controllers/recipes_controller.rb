class RecipesController < ApplicationController
	before_action :authenticate_user!
	before_action :find_recipes
	

	def index
		@recipes = current_user.recipes
	end

end