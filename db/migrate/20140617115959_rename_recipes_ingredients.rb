class RenameRecipesIngredients < ActiveRecord::Migration
  def change
  	rename_table :ingredients_joins_recipes, :ingredients_lists
  end
end
