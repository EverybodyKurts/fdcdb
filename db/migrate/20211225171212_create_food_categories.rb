class CreateFoodCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :food_categories, id: false do |t|
      t.integer :id, null: false, index: { unique: true }
      t.string :code, null: false
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
