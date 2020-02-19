class FoodTrucksController < ApplicationController
skip_before_action :authenticate_user!, only: [:show, :search]

  def index
    @foodtrucks = Foodtruck.geocoded # returns foodtrucks with coordinates

    @markers = @footrucks.map do |flat|
      {
        lat: foodtruck.latitude,
        lng: foodtruck.longitude
      }
    end
  end

  def show
    @foodtruck = FoodTruck.find(params[:id])
  end

  def search
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

  def new
      @foodtruck = FoodTruck.new
    end

    def create
     @user = current_user
     @foodtruck = FoodTruck.new(foodtruck_params)
     @foodtruck.user = @user

      if @foodtruck.save
        redirect_to dashboard_path(@user)
      else
       render "/dashboard/:id"
      end
    end


  private

  def foodtruck_params
    params.require(:food_truck).permit(:name, :category, :menu, :availability, :city, :price_per_day, :photo, :user_id)
  end
end
