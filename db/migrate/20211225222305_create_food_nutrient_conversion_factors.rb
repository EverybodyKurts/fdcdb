class CreateFoodNutrientConversionFactors < ActiveRecord::Migration[7.0]
  def change
    create_table :food_nutrient_conversion_factors, id: false do |t|
      t.integer :id, null: false, index: { unique: true }
      t.integer :fdc_id, null: false, index: true

      t.timestamps null: false
    end

    add_foreign_key :food_nutrient_conversion_factors, :foods,
                    column: :fdc_id, primary_key: :fdc_id
  end
end
