# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_11_112010) do

  create_table "accounts", force: :cascade do |t|
    t.integer "person_id"
    t.boolean "admin"
    t.text "password"
    t.text "email"
    t.text "nickname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_accounts_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.text "full_name"
    t.text "passport_series"
    t.text "passport_num"
    t.text "home_adress"
    t.integer "phone_num"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "name"
    t.string "imageble_type", null: false
    t.integer "imageble_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["imageble_type", "imageble_id"], name: "index_pictures_on_imageble"
  end

  create_table "products", force: :cascade do |t|
    t.text "car_brand"
    t.text "color"
    t.float "price"
    t.date "wos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "account_id"
    t.integer "product_id"
    t.boolean "delivery"
    t.text "type_of_payment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_purchases_on_account_id"
    t.index ["product_id"], name: "index_purchases_on_product_id"
  end

  create_table "tech_infos", force: :cascade do |t|
    t.integer "product_id"
    t.text "body_type"
    t.integer "doors_num"
    t.integer "seats_num"
    t.text "engine_type"
    t.float "engine_displ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_tech_infos_on_product_id"
  end

end
