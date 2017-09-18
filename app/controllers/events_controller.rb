class EventsController < ApplicationController

  before_action :set_event, only: [:show]

  def index
    #returning multiples of each event
    @events = current_user.events
  end

  def show
  end

  private

  def set_event
    @event = Event.find_by(id: params[:id])
  end
end
