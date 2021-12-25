class CreateFoodCalorieConversionFactors < ActiveRecord::Migration[7.0]
  def change
    create_table :food_calorie_conversion_factors, id: false do |t|
      t.references :food_nutrient_conversion_factor,
                   null: false,
                   foreign_key: true,
                   index: {
                     name: 'idx_cal_conversion_factors_on_nutrient_conversion_factor_id',
                     unique: true
                   }

      t.float :protein_value, null: false
      t.float :fat_value, null: false
      t.float :carbohydrate_value, null: false

      t.timestamps null: false
    end
  end
end
