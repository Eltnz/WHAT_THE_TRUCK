class FoodTruck < ActiveRecord::Base
 include PgSearch::Model
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :category, :menu, :availability, :city, :price_per_day, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  pg_search_scope :search_by_address,
                  against: :address,
                  using: {
                    tsearch: { prefix: true }
                  }
end
