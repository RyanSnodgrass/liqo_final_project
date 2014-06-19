class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name 
    devise_parameter_sanitizer.for(:sign_up) << :birthday
  end
 #  def create
	# 	@liqueur = Ingredient.find(params[:id])
	# 	current_user.ingredients << @liqueur
	# 	redirect_to :back
	# end
	# def destroy
	# 	@liqueur = Ingredient.find(params[:id])
	# 	current_user.ingredients.delete @liqueur
	# 	redirect_to :back
	# end
  def remove_recipe(ingredient)
  	user_recs = current_user.recipes
  	user_recs.each do |ur|
  		user_recs.delete(ur) if ur.ingredients.include?(ingredient)
  	end
  end

	def find_recipes
		@recs = Recipe.all
		@recs.each do |r|
			@rec_ing = r.ingredients
			@ing_count = @rec_ing.count
			@check_count = 0
			@rec_ing.each do |i|
				@check_count +=1 if current_user.ingredients.include?(i)
				if @check_count == @ing_count
					if current_user.recipes.include?(r)
						# do nothing
					else
						current_user.recipes << r
					end
				else
					#do nothing
				end
			end
		end
	end
end
