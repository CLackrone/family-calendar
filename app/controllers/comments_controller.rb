class CommentsController < ApplicationController
  before_action :set_event
  before_action :set_comment, only: [:show, :destroy]

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

  def show
  end

  def destroy
    @comment.destroy
    
    respond_to do |format|
      format.html { redirect_to event_path(@event)}
      format.json
    end
  end
  #def destroy
   # if @comment.destroy
    #  flash[:alert] = "Comment deleted"
     # redirect_to event_path(@event)
    #else
     # render @event
    #end
  #end



  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :event_id)
  end

end