class BookingsController < ApplicationController

  def new
    @foodtruck = foodtruck.find(params[:foodtruck_id])
    @user = user.find(params[:user_id])
    @booking = Booking.new
  end

  def create
    @foodtruck = foodtruck.find(params[:foodtruck_id])
    @user = user.find(params[:user_id])
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
