class RenameColumnsIngredientLists < ActiveRecord::Migration
  def change
  	rename_column :ingredient_lists, :ingredients_id, :ingredient_id
  	rename_column :ingredient_lists, :recipes_id, :recipe_id
  end
end
