class AddCoordinatesToFoodTruck < ActiveRecord::Migration[6.0]
  def change
    add_column :food_trucks, :latitude, :float
    add_column :food_trucks, :longitude, :float
  end
end
