class AccommodationsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]


  def new
    @place = Place.find(params[:place_id])
    @accommodation = @place.accommodations.new
  end

  def create
    @place = Place.find(params[:place_id])
    @accommodation = @place.accommodations.new(accommodations_params)
    if @accommodation.save
      flash[:notice] = "Accommodation saved"
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  def show
    @place = Place.find(params[:place_id])
    @accommodation = Accommodation.find(params[:id])
  end

  def edit
    @place = Place.find(params[:place_id])
    @accommodation = Accommodation.find(params[:id])
  end

  def update
    @place = Place.find(params[:place_id])
    @accommodation = Accommodation.find(params[:id])
    if @accommodation.update(accommodations_params)
      flash[:notice] = "Accommodation successfully updated."
      redirect_to places_path(@place)
    else
      render :edit
    end
  end

  def destroy
    @accommodation = Accommodation.find(params[:id])
    @accommodation.destroy
    flash[:notice] = "Accommodation successfully deleted"
    redirect_to places_path(@accommodation.place)
  end
   

private
  def accommodations_params
    params.require(:accommodation).permit(:description, :housing_type, :guests, :price, :name)
  end
end
