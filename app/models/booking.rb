class Booking < ApplicationRecord
  belongs_to :food_truck
  belongs_to :user, dependent: :destroy
  validates :total_price, :start_date, :end_date, presence: true
end
