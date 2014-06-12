class RenameTypeBack < ActiveRecord::Migration
  def change
  	rename_column :ingredients, :type, :i_type
  end
end
