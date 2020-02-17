class FoodTruck < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :category, :menu, :availability, :city, :price_per_day, presence: true
end
