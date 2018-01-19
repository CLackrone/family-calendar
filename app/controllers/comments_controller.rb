class CommentsController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @comments = @event.comments
  end
end
