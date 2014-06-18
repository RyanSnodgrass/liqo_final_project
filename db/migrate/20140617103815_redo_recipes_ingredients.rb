class RedoRecipesIngredients < ActiveRecord::Migration
  def change
  	drop_table   :recipes_ingredients

  	create_table :ingredients_joins_recipes do |t|
  		t.integer  :ingredients_id
  		t.integer  :recipes_id
  		t.string   :amount
  	end
  end
end
