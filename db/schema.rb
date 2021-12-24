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

ActiveRecord::Schema.define(version: 2021_12_21_150826) do

  create_table "clients", force: :cascade do |t|
    t.text "fullName"
    t.text "passportSeries"
    t.text "passportNum"
    t.text "homeAdress"
    t.integer "phoneNum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ggwps", force: :cascade do |t|
    t.boolean "delivery"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.text "countryOrin"
    t.text "carBrand"
    t.text "model"
    t.text "color"
    t.boolean "availability"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "true_or_falses", force: :cascade do |t|
    t.boolean "delivery"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
