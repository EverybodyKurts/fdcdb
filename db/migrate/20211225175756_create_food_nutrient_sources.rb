class CreateFoodNutrientSources < ActiveRecord::Migration[7.0]
  def change
    create_table :food_nutrient_sources, id: false do |t|
      t.integer :id, null: false, index: { unique: true }
      t.integer :code, null: false
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
