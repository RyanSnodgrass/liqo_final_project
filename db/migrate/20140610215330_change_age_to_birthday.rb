class ChangeAgeToBirthday < ActiveRecord::Migration
  def change
  	remove_column :users, :age
  	add_column :users, :birthday, :date
  end
end
