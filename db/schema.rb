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

ActiveRecord::Schema.define(version: 20160920193639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "employees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offices", force: :cascade do |t|
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "address"
  end

  add_index "offices", ["company_id"], name: "index_offices_on_company_id", using: :btree

  create_table "packages", force: :cascade do |t|
    t.integer  "office_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "track_number"
    t.string   "status"
    t.string   "product_name"
    t.string   "service"
    t.string   "receptor_key"
    t.string   "arrived_date"
    t.string   "arrived_hour"
    t.string   "receptor_name"
  end

  add_index "packages", ["office_id"], name: "index_packages_on_office_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "office_id"
    t.integer  "actable_id"
    t.string   "actable_type"
  end

  add_index "users", ["office_id"], name: "index_users_on_office_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "offices", "companies"
  add_foreign_key "packages", "offices"
  add_foreign_key "users", "offices"
end
