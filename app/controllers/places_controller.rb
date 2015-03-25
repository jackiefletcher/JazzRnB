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

  def show
    @place = Place.find(params[:id])
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    if @place.update(places_params)
      flash[:notice] = "Your place has been editied successfully"
      redirect_to places_path
    else
      render :edit
    end
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    flash[:notice] = "Place Deleted"
    redirect_to places_path
  end


private
  def places_params
    params.require(:place).permit(:city, :state, :country)
  end
end
