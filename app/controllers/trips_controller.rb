class TripsController < ApplicationController
  respond_to :html, :xml, :json
  
  before_filter :load_trip, :except => [:new, :index, :create]
  
  def index
    @trips = Trip.order('name')
  end

  def show
  end

  # not including new or create methods because those
  # are handled by the factory.
  
  protected

  def load_trip
    @trip = Trip.find(params[:id])
  end
  
end
