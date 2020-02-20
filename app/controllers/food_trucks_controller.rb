class FoodTrucksController < ApplicationController
skip_before_action :authenticate_user!, only: [:show, :search]


  def show
    @foodtruck = FoodTruck.find(params[:id])
  end

  def search
    if (params[:city].empty? && params[:category].empty?)
      @foodtrucks = FoodTruck.all
    elsif (params[:category].empty? == false && params[:city].empty? == false)
      @foodtrucks = FoodTruck.search_by_city_and_category(params[:category])
    elsif params[:city].empty? == false
      @foodtrucks = FoodTruck.search_by_city(params[:city])
    elsif params[:category].empty? == false
      @foodtrucks = FoodTruck.search_by_category(params[:category])
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

