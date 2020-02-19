class FoodTrucksController < ApplicationController
skip_before_action :authenticate_user!, only: [:show, :search]


  def show
    @foodtruck = FoodTruck.find(params[:id])
  end

  def search
    authorize @foodtruck
    if (params[:city] == "" && params[:category] == "")
      @foodtrucks = FoodTruck.where(city: params[:city], category: params[:category])
    elsif params[:city].nil? == false
      @foodtrucks = FoodTruck.where(city: params[:city])
    elsif params[:category].nil? == false
      @foodtrucks = FoodTruck.where(category: params[:category])
    else
      redirect_to root_path
    end
  end

  private

  def foodtruck_params
    params.require(:food_truck).permit(:name, :category, :menu, :availability, :city, :price_per_day)
  end
end

