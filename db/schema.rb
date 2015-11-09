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

ActiveRecord::Schema.define(version: 20151108225114) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.integer  "property_type_id"
    t.text     "property_address"
    t.integer  "sqft"
    t.integer  "number_of_units",  default: 0
    t.boolean  "exterior_tour",    default: false
    t.boolean  "floor_plan",       default: false
    t.integer  "photo_id"
    t.boolean  "custome_domain",   default: false
    t.integer  "detach_space",     default: 0
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "orders", ["photo_id"], name: "index_orders_on_photo_id", using: :btree
  add_index "orders", ["property_type_id"], name: "index_orders_on_property_type_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "property_types", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orders", "photos"
  add_foreign_key "orders", "property_types"
end
