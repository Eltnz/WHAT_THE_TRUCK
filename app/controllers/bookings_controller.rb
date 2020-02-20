class BookingsController < ApplicationController

  def new
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
    @booking.total_price = (@booking.end_date - @booking.start_date) * @foodtruck.price_per_day
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
