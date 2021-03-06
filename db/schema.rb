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

ActiveRecord::Schema.define(version: 20150415141038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audits", force: true do |t|
    t.integer  "request_id"
    t.string   "generator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.date     "start_date"
    t.date     "end_date"
  end

  create_table "customers", force: true do |t|
    t.integer  "user_id"
    t.string   "company_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.integer  "request_id"
    t.string   "photo"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "requests", force: true do |t|
    t.integer  "customer_id"
    t.string   "contact_firstname"
    t.string   "contact_lastname"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.text     "street_address"
    t.string   "city"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zip_code"
  end

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "role"
  end

  create_table "walkthroughs", force: true do |t|
    t.integer  "request_id"
    t.integer  "square_footage"
    t.integer  "num_floors"
    t.integer  "max_occupancy"
    t.string   "other_businesses"
    t.text     "other_businesses_type"
    t.string   "ownership"
    t.string   "waste_disposal_contract"
    t.string   "waste_management_cost"
    t.string   "loading_dock"
    t.string   "freight_elevators"
    t.string   "storage_space"
    t.text     "storage_space_details"
    t.string   "trash_hauler"
    t.string   "trash_hauler_contract"
    t.string   "contract_available"
    t.string   "annual_record"
    t.string   "waste_storage"
    t.text     "waste_containers",                array: true
    t.string   "buy_recycled"
    t.text     "buy_recycled_details"
    t.string   "green_cleaning_products"
    t.text     "green_cleaning_details"
    t.string   "mandated_recycling"
    t.string   "recycling_program"
    t.text     "recycling_details"
    t.string   "recycling_stream"
    t.text     "recycling_stream_details"
    t.text     "discontinued_recycling"
    t.string   "current_compost"
    t.string   "past_compost"
    t.string   "ZW_policy"
    t.string   "LEED"
    t.string   "recertify_LEED"
    t.string   "requesting_audit_services"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "waste_containers_other"
    t.date     "date"
    t.text     "generate_toner_ink",              array: true
    t.text     "recycle_toner_ink",               array: true
    t.text     "generate_CFLs",                   array: true
    t.text     "recycle_CFLs",                    array: true
    t.text     "generate_batteries",              array: true
    t.text     "recycle_batteries",               array: true
    t.text     "generate_computers",              array: true
    t.text     "recycle_computers",               array: true
    t.text     "generate_cellphones",             array: true
    t.text     "recycle_cellphones",              array: true
    t.text     "generate_tvs",                    array: true
    t.text     "recycle_tvs",                     array: true
    t.text     "generate_other_corded_equipment", array: true
    t.text     "recycle_other_corded_equipment",  array: true
    t.text     "generate_furniture",              array: true
    t.text     "recycle_furniture",               array: true
    t.text     "generate_linens_uniforms",        array: true
    t.text     "recycle_linens_uniforms",         array: true
    t.text     "generate_construction_debris",    array: true
    t.text     "recycle_construction_debris",     array: true
    t.text     "generate_pallets",                array: true
    t.text     "recycle_pallets",                 array: true
  end

  create_table "wastes", force: true do |t|
    t.integer  "audit_id"
    t.float    "weight"
    t.string   "material_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "origin"
  end

end
