class CreateNutrients < ActiveRecord::Migration[7.0]
  def change
    create_table :nutrients, id: false do |t|
      t.integer :id, null: false, index: { unique: true }
      t.string :name, null: false
      t.string :unit_name, null: false
      t.float :nutrient_nbr
      t.string :rank

      t.timestamps null: false
    end
  end
end
