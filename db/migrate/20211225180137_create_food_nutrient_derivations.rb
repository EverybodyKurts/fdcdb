class CreateFoodNutrientDerivations < ActiveRecord::Migration[7.0]
  def change
    create_table :food_nutrient_derivations, id: false do |t|
      t.bigint :id, null: false, index: { unique: true }
      t.string :code, null: false
      t.string :description, null: false
      t.integer :source_id, null: false

      t.timestamps null: false
    end

    add_foreign_key :food_nutrient_derivations, :food_nutrient_sources, column: :source_id
  end
end
