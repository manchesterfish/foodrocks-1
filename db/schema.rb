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

ActiveRecord::Schema.define(version: 20140912160927) do

  create_table "dishes", force: true do |t|
    t.string   "dish_name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock"
    t.string   "ImageURL"
    t.string   "restaurant"
    t.string   "restaurantURL"
  end

  create_table "orders", force: true do |t|
    t.integer  "dish_id"
    t.integer  "phone_num"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "time"
  end

  add_index "orders", ["dish_id"], name: "index_orders_on_dish_id"

end
