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
      render :new
    end
  end

  def index
    if params[:category_id]
      @events = Category.find(params[:category_id]).events
    else
      @events = current_user.events.uniq
      respond_to do |format|
        format.html {render :index}
        format.json {render json: @events}
      end
    end
  end

  def show
    if !current_user.events.include?(@event)
      flash[:alert] = "You can't view this event."
      redirect_to events_path
    end
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
    if @event.destroy
      flash[:alert] = "Event deleted"
      redirect_to events_path 
    else
      render @event 
    end
  end


  private

  def event_params
    params.require(:event).permit(:name, :time, :location, :category_id, :category_name, 
      family_member_ids: [], family_member_events_attributes:[:required_items])
  end

  def set_event
    @event = Event.find_by(id: params[:id])
  end
end
