class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(places_params)
    if @place.save
      flash[:notice] = "Place saved"
      redirect_to places_path
    else
      render :new
    end
  end

private
  def places_params
    params.require(:place).permit(:city, :state, :country)
  end
end
