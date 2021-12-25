class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods, id: false do |t|
      t.integer :fdc_id, null: false
      t.string :data_type, null: false
      t.string :description, null: false
      t.references :food_category, foreign_key: true, index: true
      t.date :publication_date, null: false

      t.timestamps null: false
    end
  end
end
