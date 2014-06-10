class ChangeOver21ToAge < ActiveRecord::Migration
  def change
  	remove_column :users, :over_21
  	add_column    :users, :age, :integer
  end
end
