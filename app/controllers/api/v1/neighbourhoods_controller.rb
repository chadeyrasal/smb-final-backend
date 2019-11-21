class Api::V1::NeighbourhoodsController < ApplicationController

  def index
    city = City.find(params[:city_id])
    neighbourhoods = city.neighbourhoods
    render json: neighbourhoods
  end

  def create
    neighbourhood = Neighbourhood.new(neighbourhood_params)
    if neighbourhood.save
      render json: neighbourhood
    else
      render json: { error: "There was an error creating this neighbourhood" }
    end
  end

  def show
    neighbourhood = Neighbourhood.find(params[:id])
    render json: neighbourhood
  end


  private

  def neighbourhood_params
    params.require(:neighbourhood).permit(:name, :city_id)
  end

end
