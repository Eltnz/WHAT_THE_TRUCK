class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :food_trucks
  has_many :bookings
  validates :email, :phone_number, :first_name, :last_name, presence: true
  validates_uniqueness_of :first_name, scope: [:last_name]
end
