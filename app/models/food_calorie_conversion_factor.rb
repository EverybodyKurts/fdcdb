# == Schema Information
#
# Table name: food_calorie_conversion_factors
#
#  carbohydrate_value                 :float            not null
#  fat_value                          :float            not null
#  protein_value                      :float            not null
#  created_at                         :datetime         not null
#  updated_at                         :datetime         not null
#  food_nutrient_conversion_factor_id :integer          not null, primary key
#
# Indexes
#
#  idx_cal_conversion_factors_on_nutrient_conversion_factor_id  (food_nutrient_conversion_factor_id) UNIQUE
#
# Foreign Keys
#
#  food_nutrient_conversion_factor_id  (food_nutrient_conversion_factor_id => food_nutrient_conversion_factors.id)
#
class FoodCalorieConversionFactor < ApplicationRecord
  self.primary_key = :food_nutrient_conversion_factor_id

  belongs_to :food_nutrient_conversion_factor

  has_one :food,
          through: :food_nutrient_conversion_factor
end
