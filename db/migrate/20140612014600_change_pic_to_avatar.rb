class ChangePicToAvatar < ActiveRecord::Migration
  def change
  	rename_column :ingredients, :i_avatar, :avatar
  	rename_column :recipes, :r_avatar, :avatar
  	rename_column :glasses, :g_avatar, :avatar
  end
end
