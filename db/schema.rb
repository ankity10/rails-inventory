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

ActiveRecord::Schema.define(version: 20160624104524) do

  create_table "carts", id: false, force: :cascade do |t|
    t.integer  "purchase_id", limit: 4
    t.integer  "item_id",     limit: 4
    t.float    "quantity",    limit: 24
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "total",       limit: 4,  default: 0
  end

  add_index "carts", ["item_id"], name: "index_carts_on_item_id", using: :btree
  add_index "carts", ["purchase_id"], name: "index_carts_on_purchase_id", using: :btree

  create_table "items", primary_key: "item_id", force: :cascade do |t|
    t.string   "ItemName",   limit: 30
    t.integer  "Price",      limit: 4
    t.integer  "stock",      limit: 4,  default: 0
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "purchases", primary_key: "purchase_id", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.float    "total",      limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "purchases", ["user_id"], name: "index_purchases_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",       limit: 30
    t.string   "email",      limit: 30, default: ""
    t.string   "password",   limit: 30
  end

end
