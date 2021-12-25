# == Schema Information
#
# Table name: food_nutrient_conversion_factors
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  fdc_id     :integer          not null
#
# Indexes
#
#  index_food_nutrient_conversion_factors_on_fdc_id  (fdc_id)
#  index_food_nutrient_conversion_factors_on_id      (id) UNIQUE
#
# Foreign Keys
#
#  fdc_id  (fdc_id => foods.fdc_id)
#
class FoodNutrientConversionFactor < ApplicationRecord
  self.primary_key = :id

  belongs_to :food,
             foreign_key: :fdc_id,
             primary_key: :fdc_id,
             inverse_of: :food_nutrient_conversion_factors
end
