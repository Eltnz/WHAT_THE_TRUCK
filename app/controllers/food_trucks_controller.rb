class FoodTrucksController < ApplicationController
skip_before_action :authenticate_user!, only: :show

  def show
    @foodtruck = FoodTruck.find(params[:id])
  end

  def search
    @foodtruck = FoodTruck.where(city: params[:city]).where(category: params[:category]).where(availability: params[:availability])
  end

  private

  def foodtruck_params
    params.require(:food_truck).permit(:name, :category, :menu, :availability, :city, :price_per_day)
  end
end

