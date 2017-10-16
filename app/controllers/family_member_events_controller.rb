class FamilyMemberEventsController < ApplicationController

  def show
    @family_member_event = FamilyMemberEvent.find_by(id: params[:id])
  end

  

end