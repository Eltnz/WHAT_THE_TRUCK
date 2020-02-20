class FoodTruck < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  validates :name, :category, :menu, :city, :price_per_day, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
