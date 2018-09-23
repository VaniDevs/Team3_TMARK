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

ActiveRecord::Schema.define(version: 20180922210512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.string "whatTheyNeed"
    t.time "datetime"
    t.string "comment"
    t.boolean "showup"
    t.boolean "haircut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "agency_id"
    t.bigint "client_id"
    t.index ["agency_id"], name: "index_appointments_on_agency_id"
    t.index ["client_id"], name: "index_appointments_on_client_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donors", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "size"
    t.boolean "instock"
    t.integer "quantity"
    t.string "category"
    t.string "subcategory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_cart_items", force: :cascade do |t|
    t.bigint "shopping_cart_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_shopping_cart_items_on_product_id"
    t.index ["shopping_cart_id"], name: "index_shopping_cart_items_on_shopping_cart_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.bigint "appointment_id"
    t.bigint "volunteer_id"
    t.date "purchaseDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_shopping_carts_on_appointment_id"
    t.index ["volunteer_id"], name: "index_shopping_carts_on_volunteer_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "shopping_cart_items", "products"
  add_foreign_key "shopping_cart_items", "shopping_carts"
  add_foreign_key "shopping_carts", "appointments"
  add_foreign_key "shopping_carts", "volunteers"
end
