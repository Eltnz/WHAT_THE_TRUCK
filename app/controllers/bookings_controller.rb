class BookingsController < ApplicationController

  def new
    @foodtruck = FoodTruck.find(params[:food_truck_id])
    @user = current_user
    @booking = Booking.new
  end

  def create
    authorize @foodtruck
    @foodtruck = FoodTruck.find(params[:foodtruck_id])
    @user = User.find(params[:user_id])
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to user_path(@booking.user)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:total_price, :start_date, :end_date)
  end
end
