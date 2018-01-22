class CommentsController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @comments = @event.comments
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @comments}
    end
  end
end

