class Recipe < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :number_of_people, presence: true
  validates :cooking_time, presence: true
  validates :category, presence: true
  has_many :materials, dependent: :delete_all
  has_many :cooking_processes, dependent: :delete_all
  has_many :nutritions, dependent: :delete_all

  def find_by_name(name)
    find_by(name: name)
  end

  def find_by_id(id)
    find_by(id: id)
  end
end
