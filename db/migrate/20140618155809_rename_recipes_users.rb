class RenameRecipesUsers < ActiveRecord::Migration
  def change
  	rename_table :users_recipes, :recipes_users
  end
end
