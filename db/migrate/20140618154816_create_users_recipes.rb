class CreateUsersRecipes < ActiveRecord::Migration
  def change
    create_table :users_recipes, :id => false do |t|
    	t.integer :users_id
    	t.integer :recipe_id
    end
  end
end
