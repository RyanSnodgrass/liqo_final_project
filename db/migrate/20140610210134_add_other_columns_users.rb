class AddOtherColumnsUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :over_21, :integer
  end
end

  # create_table "users", force: true do |t|
  #   t.string   "email",                  default: "", null: false
  #   t.string   "encrypted_password",     default: "", null: false
  #   t.string   "reset_password_token"
  #   t.datetime "reset_password_sent_at"
  #   t.datetime "remember_created_at"
  #   t.integer  "sign_in_count",          default: 0,  null: false
  #   t.datetime "current_sign_in_at"
  #   t.datetime "last_sign_in_at"
  #   t.string   "current_sign_in_ip"
  #   t.string   "last_sign_in_ip"