class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to '/events'
    else
      render 'new'
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def event_params
    params.require(:event).permit(:name, :short_description, :complete_description,
    :begin_date, :end_date)
  end

end
