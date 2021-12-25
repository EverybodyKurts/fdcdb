class CreateFoodNutrients < ActiveRecord::Migration[7.0]
  def change
    create_table :food_nutrients, id: false do |t|
      t.bigint :id, null: false, index: { unique: true }
      t.integer :fdc_id, null: false, index: true
      t.references :nutrient, null: false, foreign_key: true, index: true
      t.integer :amount, null: false
      t.integer :data_points
      t.integer :derivation_id, index: true
      t.float :min
      t.float :max
      t.float :median
      t.string :footnote
      t.integer :min_year_acquired

      t.timestamps null: false
    end

    add_foreign_key :food_nutrients, :foods,
                    column: :fdc_id, primary_key: :fdc_id

    add_foreign_key :food_nutrients, :food_nutrient_derivations, column: :derivation_id
  end
end
