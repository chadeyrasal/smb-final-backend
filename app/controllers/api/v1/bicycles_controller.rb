class Api::V1::BicyclesController < ApplicationController

  def index
    if params[:city_id]
      city = City.find(params[:city_id])
      bicycles = city.bicycles
    elsif params[:neighbourhood_id]
      neighbourhood = Neighbourhood.find(params[:neighbourhood_id])
      bicycles = neighbourhood.bicycles
    end
    render json: bicycles
  end

  def create
    bicycle = Bicycle.new(bicycle_params)
    if bicycle.save
      render json: bicycle
    else
      render json: { error: "There was an error creating this bicycle" }
    end
  end

  def show
    bicycle = Bicycle.find(params[:id])
    render json: bicycle
  end


  private

  def bicycle_params
    params.require(:bicycle).permit(:title, :description, :bicycle_type, :size, :colour, :price, :neighbourhood_id, :city_id, :country_id)
  end

end
