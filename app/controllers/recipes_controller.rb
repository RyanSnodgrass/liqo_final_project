class RecipesController < ApplicationController
	before_action :authenticate_user!
	def index
		current_user.ingredients

	end

end