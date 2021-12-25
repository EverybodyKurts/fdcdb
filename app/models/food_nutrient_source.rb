# == Schema Information
#
# Table name: food_nutrient_sources
#
#  id          :integer          not null, primary key
#  code        :integer          not null
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_food_nutrient_sources_on_id  (id) UNIQUE
#
class FoodNutrientSource < ApplicationRecord
  self.primary_key = :id

  has_many :food_nutrient_derivations, foreign_key: :source_id
end
