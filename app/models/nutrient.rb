# == Schema Information
#
# Table name: nutrients
#
#  id           :integer          not null
#  name         :string           not null
#  nutrient_nbr :float
#  rank         :string
#  unit_name    :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_nutrients_on_id  (id) UNIQUE
#
class Nutrient < ApplicationRecord
end
