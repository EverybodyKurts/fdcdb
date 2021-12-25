# == Schema Information
#
# Table name: foods
#
#  data_type        :string           not null
#  description      :string           not null
#  publication_date :date             not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  fdc_id           :integer          not null, primary key
#  food_category_id :integer
#
# Indexes
#
#  index_foods_on_food_category_id  (food_category_id)
#
# Foreign Keys
#
#  food_category_id  (food_category_id => food_categories.id)
#
class Food < ApplicationRecord
  self.primary_key = :fdc_id

  belongs_to :food_category
end
