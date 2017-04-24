class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "This event has been added"
      redirect_to event_path(@event)
    else
      flash[:notice] = "This event was not saved"
      redirect_to new_event
    end

  end


  private

  def event_params
    params.require(:event).permit(:category, :name, :date_and_time, :capacity)
  end


end
