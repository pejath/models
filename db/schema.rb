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

ActiveRecord::Schema.define(version: 2021_12_28_151726) do

  create_table "accounts", force: :cascade do |t|
    t.integer "person_id"
    t.boolean "admin"
    t.text "password"
    t.text "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["person_id"], name: "index_accounts_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.text "fullName"
    t.text "passportSeries"
    t.text "passportNum"
    t.text "homeAdress"
    t.integer "phoneNum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "account_id"
    t.integer "product_id"
    t.text "countryOrin"
    t.text "carBrand"
    t.text "model"
    t.text "color"
    t.boolean "availability"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_products_on_account_id"
    t.index ["product_id"], name: "index_products_on_product_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "customerCode"
    t.date "purchaseDate"
    t.boolean "delivert"
    t.text "typeOfPayment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tech_infos", force: :cascade do |t|
    t.text "bodyType"
    t.integer "doorsNum"
    t.integer "seatsNum"
    t.text "engineType"
    t.text "engineLocate"
    t.float "engineDispl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
