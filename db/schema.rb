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

ActiveRecord::Schema.define(version: 2018_07_20_191818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "brand_name"
    t.float "price"
    t.string "price_string"
  end

  create_table "brands_stores", id: false, force: :cascade do |t|
    t.bigint "brand_id"
    t.bigint "store_id"
    t.index ["brand_id"], name: "index_brands_stores_on_brand_id"
    t.index ["store_id"], name: "index_brands_stores_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "store_name"
  end

end
