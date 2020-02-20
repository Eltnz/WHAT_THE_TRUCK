class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @foodtrucks = FoodTruck.geocoded # returns flats with coordinates
    @markers = @foodtrucks.map do |foodtruck|
      {
        lat: foodtruck.latitude,
        lng: foodtruck.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { foodtruck: foodtruck }),
        image_url: helpers.asset_url('logo.png')
      }
    end
  end
end
