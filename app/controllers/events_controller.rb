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


#How can I show only the current user's events when category_id is present?
  def index
    if params[:category_id]
      @events = Category.find(params[:category_id]).events
    else
      @events = current_user.events
    end
  end

#why are category and event ids being reversed here?
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
    if @event.destroy
      redirect_to events_path 
    else
      render @event 
    end
  end


  private

  def event_params
    params.require(:event).permit(:name, :time, :location, :category_id, :category_name, family_member_ids: [])
  end

  def set_event
    @event = Event.find_by(id: params[:id])
  end
end
