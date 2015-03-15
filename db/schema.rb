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

ActiveRecord::Schema.define(version: 0) do

  create_table "materials", force: :cascade do |t|
    t.string "name"
  end

  create_table "transactions", force: :cascade do |t|
    t.float   "tax_receipt"
    t.integer "buyer_user_id"
    t.integer "seller_user_id"
    t.float   "tonnage"
    t.integer "material_id"
    t.float   "price"
  end

  add_index "transactions", ["buyer_user_id"], name: "index_transactions_on_buyer_user_id"
  add_index "transactions", ["material_id"], name: "index_transactions_on_material_id"
  add_index "transactions", ["seller_user_id"], name: "index_transactions_on_seller_user_id"

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.float   "company_fed_code"
    t.string  "address"
    t.string  "zip_code"
    t.string  "email"
    t.string  "password"
    t.string  "telephone"
    t.integer "number_of_employees"
    t.string  "company_type"
  end

end
