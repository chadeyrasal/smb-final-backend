class Api::V1::CitiesController < ApplicationController

  def index
    @cities = City.all
    render json: @cities
  end

  def create
    @city = City.new(city_params)
    if @city.save
      render json: @city
    else
      render json: { error: "There was an error creating this city" }
    end
  end

  def show
    @city = City.find(params[:id])
    render json: @city
  end


  private

  def city_params
    params.require(:city).permit(:name, :country_id)
  end
  
end
