class AddAddressToFoodTruck < ActiveRecord::Migration[6.0]
  def change
    add_column :food_trucks, :address, :string
  end
end
