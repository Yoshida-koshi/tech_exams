class Nutrition < ActiveRecord::Base
  validates :nutrient, presence: true
  validates :amount, presence: true
  belongs_to :recipe
end
