class Api::V1::TripsController < ApplicationController

  before_action :set_trip, only: [:show, :destroy]

  def index
    @trips = Trip.all
    render json: @trips
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      render json: @trip
    else
      render json: { error: "There was an error creating this trip" }
    end
  end

  def show
    render json: @trip
  end

  def destroy
    @trip.destroy
  end


  private

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :rating, :review, :bicycle_id, :renter_id)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

end
