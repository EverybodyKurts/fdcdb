# == Schema Information
#
# Table name: food_portions
#
#  id                  :integer          not null, primary key
#  amount              :float            not null
#  data_points         :integer
#  footnote            :string
#  gram_weight         :float            not null
#  min_year_acquired   :date
#  modifier            :string
#  portion_description :string
#  seq_num             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  fdc_id              :integer          not null
#  measure_unit_id     :integer          not null
#
# Indexes
#
#  index_food_portions_on_fdc_id           (fdc_id)
#  index_food_portions_on_id               (id) UNIQUE
#  index_food_portions_on_measure_unit_id  (measure_unit_id)
#
# Foreign Keys
#
#  fdc_id           (fdc_id => foods.fdc_id)
#  measure_unit_id  (measure_unit_id => measure_units.id)
#
class FoodPortion < ApplicationRecord
  self.primary_key = :id

  belongs_to :measure_unit

  belongs_to :food,
             foreign_key: :fdc_id,
             primary_key: :fdc_id,
             inverse_of: :food_portions
end
