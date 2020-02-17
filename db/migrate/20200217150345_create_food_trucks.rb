class CreateFoodTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :food_trucks do |t|
      t.string :name
      t.string :category
      t.string :menu
      t.boolean :availability
      t.string :city
      t.float :price_per_day

      t.timestamps
    end
  end
end
