class CreateFoodPortions < ActiveRecord::Migration[7.0]
  def change
    create_table :food_portions, id: false do |t|
      t.integer :id, null: false, index: { unique: true }
      t.integer :fdc_id, null: false, index: true
      t.integer :seq_num
      t.float :amount, null: false
      t.references :measure_unit, null: false, foreign_key: true, index: true
      t.string :portion_description
      t.string :modifier
      t.float :gram_weight, null: false
      t.integer :data_points
      t.string :footnote
      t.date :min_year_acquired

      t.timestamps null: false
    end

    add_foreign_key :food_portions, :foods,
                    column: :fdc_id, primary_key: :fdc_id
  end
end
