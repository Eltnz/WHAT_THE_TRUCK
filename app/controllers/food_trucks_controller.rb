class FoodTrucksController < ApplicationController
skip_before_action :authenticate_user!, only: [:show, :search]


  def show
    @foodtruck = FoodTruck.find(params[:id])

  end

  def search
    if params[:address].empty?
      @foodtrucks = FoodTruck.all
    else
      @foodtrucks = FoodTruck.search_by_address(params[:address])
    end

     @markers = @foodtrucks.map do |foodtruck|
      {
        lat: foodtruck.latitude,
        lng: foodtruck.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { foodtruck: foodtruck }),
        image_url: helpers.asset_url('logo.png')
      }
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

  def update
    @foodtruck = FoodTruck.find(params[:id])
    @foodtruck.update(foodtruck_params)
    raise
    redirect_to dashboard_path
  end

  def destroy
    @foodtruck = FoodTruck.find(params[:id])
    @foodtruck.destroy
    redirect_to dashboard_path
  end



  private

  def foodtruck_params
    params.require(:food_truck).permit(:name, :category, :menu, :address, :availability, :city, :price_per_day, :photo, :user_id)
  end
end

