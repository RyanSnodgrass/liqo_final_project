# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140610210134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "glasses", force: true do |t|
    t.string "name"
    t.text   "description"
    t.string "g_avatar"
  end

  create_table "ingredients", force: true do |t|
    t.string "name"
    t.string "type"
    t.text   "description"
    t.string "i_avatar"
  end

  create_table "notes", force: true do |t|
    t.text    "content"
    t.integer "recipe_id"
    t.integer "user_id"
  end

  create_table "recipes", force: true do |t|
    t.string "name"
    t.string "r_avatar"
    t.text   "description"
    t.text   "preparation"
    t.string "glass_id"
  end

  create_table "recipes_ingredients", id: false, force: true do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
  end

  create_table "user_owned_glasses", force: true do |t|
    t.integer "user_id"
    t.integer "glass_id"
    t.integer "count"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.integer  "over_21"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_ingredients", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "ingredient_id"
  end

end
