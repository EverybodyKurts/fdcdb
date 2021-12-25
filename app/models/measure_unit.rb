# == Schema Information
#
# Table name: measure_units
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_measure_units_on_id    (id) UNIQUE
#  index_measure_units_on_name  (name) UNIQUE
#
class MeasureUnit < ApplicationRecord
  self.primary_key = :id

  has_many :food_portions
end
