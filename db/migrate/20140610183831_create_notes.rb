class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text     :content
      t.integer  :recipe_id
      t.integer  :user_id
    end
  end
end
