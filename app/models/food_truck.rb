class FoodTruck < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :category, :menu, :availability, :city, :price_per_day, presence: true

end
