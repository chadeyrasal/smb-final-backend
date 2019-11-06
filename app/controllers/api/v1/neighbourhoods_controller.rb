class Api::V1::NeighbourhoodsController < ApplicationController

  before_action :set_neighbourhood, only: [:show, :destroy]

  def index
    @neighbourhoods = Neighbourhood.all
    render json: @neighbourhoods
  end

  def create
    @neighbourhood = Neighbourhood.new(neighbourhood_params)
    if @neighbourhood.save
      render json: @neighbourhood
    else
      render json: { error: "There was an error creating this neighbourhood" }
    end
  end

  def show
    render json: @neighbourhood
  end

  def destroy
    @neighbourhood.destroy
  end


  private

  def neighbourhood_params
    params.require(:neighbourhood).permit(:name, :city_id)
  end

  def set_neighbourhood
    @neighbourhood = Neighbourhood.find(params[:id])
  end

end
