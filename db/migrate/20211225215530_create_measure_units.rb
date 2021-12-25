class CreateMeasureUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :measure_units, id: false do |t|
      t.integer :id, null: false, index: { unique: true }
      t.string :name, null: false, index: { unique: true }

      t.timestamps null: false
    end
  end
end
