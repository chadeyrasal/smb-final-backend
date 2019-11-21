class Api::V1::TripsController < ApplicationController

  def index
    trips = Trip.all
    render json: trips
  end

  def create
    trip = Trip.new(trip_params)
    if trip.save
      render json: trip
    else
      render json: { error: "There was an error creating this trip" }
    end
  end

  def show
    trip = Trip.find(params[:id])
    render json: trip
  end


  private

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :rating, :review, :bicycle_id, :renter_id)
  end

end
