class Api::V1::BicyclesController < ApplicationController

  before_action :set_bicycle, only: [:show, :destroy]

  def index
    @bicycles = Bicycle.all
    render json: @bicycles
  end

  def create
    @bicycle = Account.new(bicycle_params)
    if @bicycle.save
      render json: @bicycle
    else
      render json: { error: "There was an error creating this bicycle" }
    end
  end

  def show
    render json: @bicycle
  end

  def destroy
    @bicycle.destroy
  end


  private

  def bicycle_params
    params.require(:bicycle).permit(:title, :description, :bicycle_type, :size, :colour, :price, :neighbourhood_id, :city_id, :country_id)
  end

  def set_bicycle
    @bicycle = Bicycle.find(params[:id])
  end

end
