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

ActiveRecord::Schema.define(version: 2018_11_02_182445) do

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kitchen_staffs", force: :cascade do |t|
    t.string "chef_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string "manager_name"
    t.integer "manager_pin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "item_name"
    t.text "item_description"
    t.float "item_price"
    t.string "item_picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "order_id"
    t.string "customer_names"
    t.integer "tables"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "waitstaffs", force: :cascade do |t|
    t.integer "tables"
    t.string "customer_names"
    t.integer "waitstaff_id"
    t.string "waitstaff_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
