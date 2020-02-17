class Booking < ApplicationRecord
  belongs_to :food_truck
  belongs_to :user
  validates :food_truck, :user, :total_price, :start_date, :end_date, presence: true
end
