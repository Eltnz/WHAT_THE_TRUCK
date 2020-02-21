class DashboardsController < ApplicationController
    def show
    @user = current_user
    @foodtrucks = FoodTruck.where( user_id: @user.id )
    @bookings = Booking.where(user_id: @user.id)
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

    def destroy
      @foodtruck = FoodTruck.find(params[:id])
      @foodtruck.destroy
      redirect_to dashboard_path
    end

    end



end











































