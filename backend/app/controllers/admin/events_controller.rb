class EventsController < ApplicationController
  def index
    @events = Event.all
    render json: @events
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      render json: @event
    else
      render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(:title, :location, :category)
  end
end
