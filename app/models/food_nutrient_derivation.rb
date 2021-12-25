# == Schema Information
#
# Table name: food_nutrient_derivations
#
#  id          :integer          not null
#  code        :string           not null
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  source_id   :integer          not null
#
# Indexes
#
#  index_food_nutrient_derivations_on_id  (id) UNIQUE
#
# Foreign Keys
#
#  source_id  (source_id => food_nutrient_sources.id)
#
class FoodNutrientDerivation < ApplicationRecord
  belongs_to :food_nutrient_source, foreign_key: :source_id
end
