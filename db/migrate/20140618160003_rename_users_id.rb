class RenameUsersId < ActiveRecord::Migration
  def change
  	rename_column :recipes_users, :users_id, :user_id
  end
end
