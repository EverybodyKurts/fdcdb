# == Schema Information
#
# Table name: food_categories
#
#  id          :integer          not null, primary key
#  code        :string           not null
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_food_categories_on_id  (id) UNIQUE
#
class FoodCategory < ApplicationRecord
  self.primary_key = :id
end
