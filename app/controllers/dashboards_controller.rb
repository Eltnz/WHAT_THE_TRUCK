class DashboardsController < ApplicationController
  def show
    @user = current_user
    @foodtrucks = FoodTruck.where( user_id: @user.id )
    @bookings = Booking.where(user_id: @user.id)
  end
end
