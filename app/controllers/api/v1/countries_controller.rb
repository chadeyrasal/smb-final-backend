class Api::V1::CountriesController < ApplicationController

  before_action :set_country, only: [:show, :destroy]

  def index
    @countries = Country.all
    render json: @countries
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      render json: @country
    else
      render json: { error: "There was an error creating this country" }
    end
  end

  def show
    render json: @country
  end

  def destroy
    @country.destroy
  end


  private

  def country_params
    params.require(:country).permit(:name)
  end

  def set_country
    @country = Country.find(params[:id])
  end

  end

end
