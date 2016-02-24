class EventsController < ApplicationController

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

  private
  def event_params
    params.require(:name)
  end

end