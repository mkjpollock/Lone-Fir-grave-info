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

ActiveRecord::Schema.define(version: 20140527155001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "base_materials", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "base_materials_graves", id: false, force: true do |t|
    t.integer "grave_id"
    t.integer "base_material_id"
  end

  create_table "directions", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directions_graves", id: false, force: true do |t|
    t.integer "grave_id"
    t.integer "direction_id"
  end

  create_table "epitaphs", force: true do |t|
    t.string   "direction"
    t.string   "condition"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "epitaphs_graves", id: false, force: true do |t|
    t.integer "grave_id"
    t.integer "epitaph_id"
  end

  create_table "famnames", force: true do |t|
    t.string   "name"
    t.integer  "grave_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graves", force: true do |t|
    t.string   "mainpic_file_name"
    t.string   "mainpic_content_type"
    t.integer  "mainpic_file_size"
    t.datetime "mainpic_updated_at"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "block"
    t.integer  "lot"
    t.integer  "site"
    t.string   "condition"
    t.string   "carver_name"
    t.string   "carver_city"
    t.string   "carver_location"
    t.text     "comments"
    t.date     "survey_date"
    t.string   "foundation"
    t.string   "priority"
    t.string   "treatment"
    t.text     "design"
    t.string   "cleaning"
  end

  create_table "graves_marker_conditions", id: false, force: true do |t|
    t.integer "grave_id"
    t.integer "marker_condition_id"
  end

  create_table "graves_marker_materials", id: false, force: true do |t|
    t.integer "grave_id"
    t.integer "marker_material_id"
  end

  create_table "graves_marker_types", id: false, force: true do |t|
    t.integer "grave_id"
    t.integer "marker_type_id"
  end

  create_table "marker_conditions", force: true do |t|
    t.string   "description"
    t.integer  "broken_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marker_materials", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marker_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "marker_on"
  end

  create_table "roles", force: true do |t|
    t.string  "name"
    t.integer "access_level"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
