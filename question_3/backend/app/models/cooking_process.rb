class CookingProcess < ActiveRecord::Base
  validates :order_number, presence: true
  validates :process, presence: true
  belongs_to :recipe
end
