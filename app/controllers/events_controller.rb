class EventsController < ApplicationController

  def index
    @events = Event.paginate(page: params[:page])
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
    @event = Event.find(params[:id])
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
