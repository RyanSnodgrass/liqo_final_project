class RenameIngredientsList < ActiveRecord::Migration
  def change
  	rename_table :ingredients_lists, :ingredient_lists
  end
end
