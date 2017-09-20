class EventsController < ApplicationController

  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      redirect_to new_event_path
    end
  end

  def index
    @events = current_user.events
  end

  def show
  end

  def edit
  end

  def update
    @event.update(event_params)
    if @event.save
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :time, :location, :category_id, :category_name)
  end

  def set_event
    @event = Event.find_by(id: params[:id])
  end
end
