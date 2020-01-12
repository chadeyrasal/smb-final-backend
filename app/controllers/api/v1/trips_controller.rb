class Api::V1::TripsController < ApplicationController

  def index
    trips = Trip.all
    render json: trips
  end

  def create
    trip = Trip.new()
    trip.start_date = params[:startDate]
    trip.end_date = params[:endDate]
    trip.bicycle_id = params[:bicycle][:id]
    trip.renter_id = params[:renter][:id]
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
    params.permit(:start_date, :end_date, :rating, :review, :bicycle_id, :renter_id)
  end

end
