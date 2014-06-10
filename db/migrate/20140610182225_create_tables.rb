class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string   :name
    	t.string   :email
    	t.boolean  :over_21
    end
    create_table :ingredients do |t|
    	t.string   :name
    	t.string   :type
    	t.text     :description
    	t.string	 :i_avatar
    end
    create_table :users_ingredients, id: false do |t|
    	t.integer  :user_id
    	t.integer  :ingredient_id
    end
    create_table :glasses do |t|
    	t.string   :name
    	t.text		 :description
    	t.string   :g_avatar
    end
    create_table :user_owned_glasses do |t|
    	t.integer  :user_id
    	t.integer  :glass_id
    	t.integer  :count
    end
    create_table :recipes do |t|
    	t.string   :name
    	t.string   :r_avatar
    	t.text     :description
    	t.text     :preparation
    	t.string   :glass_id
		end
		create_table :recipes_ingredients, id: false do |t|
			t.integer  :recipe_id
			t.integer  :ingredient_id
		end
  end
end
