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

ActiveRecord::Schema.define(version: 2021_12_25_173249) do

  create_table "food_categories", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.string "code", null: false
    t.string "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["id"], name: "index_food_categories_on_id", unique: true
  end

  create_table "foods", id: false, force: :cascade do |t|
    t.integer "fdc_id", null: false
    t.string "data_type", null: false
    t.string "description", null: false
    t.integer "food_category_id"
    t.date "publication_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_category_id"], name: "index_foods_on_food_category_id"
  end

  add_foreign_key "foods", "food_categories"
end
