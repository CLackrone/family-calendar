class CommentsController < ApplicationController
  before_action :set_event

  def index
    @comments = @event.comments
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @comments}
    end
  end

  def create
    @comment = @event.comments.build(comment_params)
    if 
      @comment.save
      respond_to do |format|
        format.html {render :index}
        format.json {render json: @comment}
      end
    else
      render 'events/show'
    end
  end



  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def comment_params
    params.require(:comment).permit(:content, :event_id)
  end

  
end


