class AccommodationsController < ApplicationController

  def new
    @place = Place.find(params[:place_id])
    @accommodation = @place.accommodations.new
  end

  def create
    place = Place.find(params[:place_id])
    accommodation = place.accommodations.new(accommodations_params)
    if accommodation.save
      flash[:notice] = "Accommodation saved"
      redirect_to place_path(place.accommodation)
    else
      render :new
    end
  end


private
  def accommodations_params
    params.require(:accommodation).permit(:description, :type, :guests, :price)
  end
end
