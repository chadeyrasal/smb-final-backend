class Api::V1::CountriesController < ApplicationController

  def create
    @country = Country.new(country_params)
    if @country.save
      render json: @country
    else
      render json: { error: "There was an error creating this country" }
    end
  end


  private

  def country_params
    params.require(:country).permit(:name)
  end
  
end
