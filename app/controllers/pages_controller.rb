class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @foodtrucks = FoodTruck.where.not(latitude: nil, longitude: nil)
    @foodtrucks_for_map = @foodtrucks.geocoded
    @markers = @foodtrucks_for_map.map do |foodtruck|
      {
        lat: foodtruck.latitude,
        lng: foodtruck.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { foodtruck: foodtruck })
      }
    end
  end
end
