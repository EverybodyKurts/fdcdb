# == Schema Information
#
# Table name: food_nutrients
#
#  id                :integer          not null, primary key
#  amount            :integer          not null
#  data_points       :integer
#  footnote          :string
#  max               :float
#  median            :float
#  min               :float
#  min_year_acquired :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  derivation_id     :integer
#  fdc_id            :integer          not null
#  nutrient_id       :integer          not null
#
# Indexes
#
#  index_food_nutrients_on_derivation_id  (derivation_id)
#  index_food_nutrients_on_fdc_id         (fdc_id)
#  index_food_nutrients_on_id             (id) UNIQUE
#  index_food_nutrients_on_nutrient_id    (nutrient_id)
#
# Foreign Keys
#
#  derivation_id  (derivation_id => food_nutrient_derivations.id)
#  fdc_id         (fdc_id => foods.fdc_id)
#  nutrient_id    (nutrient_id => nutrients.id)
#
class FoodNutrient < ApplicationRecord
  self.primary_key = :id

  belongs_to :food,
             foreign_key: :fdc_id,
             primary_key: :fdc_id,
             inverse_of: :food_nutrients

  belongs_to :nutrient
end
