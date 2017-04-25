class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

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
      flash[:notice] = "This event has been added."
      redirect_to event_path(@event)
    else
      @errors = @event.errors.full_messages
      render new_event_path
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      flash[:notice] = "This event has been updated."
      redirect_to event_path(@event)
    else
      @errors = @event.errors.full_messages
      p @errors
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end


  private

  def event_params
    params.require(:event).permit(:category, :name, :date_and_time, :capacity)
  end

  # def set_event
  #   @event = Event.find(params[:id])
  # end


end
