class Api::V1::CitiesController < ApplicationController

  before_action :set_city, only: [:show, :destroy]

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
    render json: @city
  end

  def destroy
    @city.destroy
  end


  private

  def city_params
    params.require(:city).permit(:name, :country_id)
  end

  def set_city
    @city = City.find(params[:id])
  end

end
