class AddUseridToFoodTruck < ActiveRecord::Migration[6.0]
  def change
    add_reference :food_trucks, :user, null: false, foreign_key: true
  end
end
