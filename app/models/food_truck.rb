class FoodTruck < ApplicationRecord
  belongs_to :user
  validates :name, :category, :menu, :availability, :city, :price_per_day, presence: true
end
