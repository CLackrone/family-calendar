class EventsController < ApplicationController

  before_action :set_event, only: [:show]
  
  def show
  end

  private

  def set_event
    @event = Event.find_by(id: params[:id])
  end
end
