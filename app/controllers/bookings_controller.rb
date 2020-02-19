class BookingsController < ApplicationController

  def new
    @foodtrucks = FoodTruck.all
    @foodtruck = FoodTruck.find(params[:food_truck_id])
    @user = current_user
    @booking = Booking.new
  end

  def create
    @foodtruck = FoodTruck.find(params[:food_truck_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.food_truck = @foodtruck
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:total_price, :start_date, :end_date)
  end
end
