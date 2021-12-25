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

ActiveRecord::Schema.define(version: 2021_12_25_222305) do

  create_table "food_categories", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.string "code", null: false
    t.string "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["id"], name: "index_food_categories_on_id", unique: true
  end

  create_table "food_nutrient_conversion_factors", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.integer "fdc_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fdc_id"], name: "index_food_nutrient_conversion_factors_on_fdc_id"
    t.index ["id"], name: "index_food_nutrient_conversion_factors_on_id", unique: true
  end

  create_table "food_nutrient_derivations", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.string "code", null: false
    t.string "description", null: false
    t.integer "source_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["id"], name: "index_food_nutrient_derivations_on_id", unique: true
  end

  create_table "food_nutrient_sources", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.integer "code", null: false
    t.string "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["id"], name: "index_food_nutrient_sources_on_id", unique: true
  end

  create_table "food_nutrients", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.integer "fdc_id", null: false
    t.integer "nutrient_id", null: false
    t.integer "amount", null: false
    t.integer "data_points"
    t.integer "derivation_id"
    t.float "min"
    t.float "max"
    t.float "median"
    t.string "footnote"
    t.integer "min_year_acquired"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["derivation_id"], name: "index_food_nutrients_on_derivation_id"
    t.index ["fdc_id"], name: "index_food_nutrients_on_fdc_id"
    t.index ["id"], name: "index_food_nutrients_on_id", unique: true
    t.index ["nutrient_id"], name: "index_food_nutrients_on_nutrient_id"
  end

  create_table "food_portions", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.integer "fdc_id", null: false
    t.integer "seq_num"
    t.float "amount", null: false
    t.integer "measure_unit_id", null: false
    t.string "portion_description"
    t.string "modifier"
    t.float "gram_weight", null: false
    t.integer "data_points"
    t.string "footnote"
    t.date "min_year_acquired"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fdc_id"], name: "index_food_portions_on_fdc_id"
    t.index ["id"], name: "index_food_portions_on_id", unique: true
    t.index ["measure_unit_id"], name: "index_food_portions_on_measure_unit_id"
  end

  create_table "foods", id: false, force: :cascade do |t|
    t.integer "fdc_id", null: false
    t.string "data_type", null: false
    t.string "description", null: false
    t.integer "food_category_id"
    t.date "publication_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fdc_id"], name: "index_foods_on_fdc_id", unique: true
    t.index ["food_category_id"], name: "index_foods_on_food_category_id"
  end

  create_table "measure_units", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["id"], name: "index_measure_units_on_id", unique: true
    t.index ["name"], name: "index_measure_units_on_name", unique: true
  end

  create_table "nutrients", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.string "name", null: false
    t.string "unit_name", null: false
    t.float "nutrient_nbr"
    t.string "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["id"], name: "index_nutrients_on_id", unique: true
  end

  add_foreign_key "food_nutrient_conversion_factors", "foods", column: "fdc_id", primary_key: "fdc_id"
  add_foreign_key "food_nutrient_derivations", "food_nutrient_sources", column: "source_id"
  add_foreign_key "food_nutrients", "food_nutrient_derivations", column: "derivation_id"
  add_foreign_key "food_nutrients", "foods", column: "fdc_id", primary_key: "fdc_id"
  add_foreign_key "food_nutrients", "nutrients"
  add_foreign_key "food_portions", "foods", column: "fdc_id", primary_key: "fdc_id"
  add_foreign_key "food_portions", "measure_units"
  add_foreign_key "foods", "food_categories"
end
