class FamilyMembersController < ApplicationController

  before_action :set_member, only: [:show]

  def index
    @members = FamilyMember.all 
  end

  def new
  end

  def show
  end

  private

  def set_member
    @member = FamilyMember.find_by(id: params[:id])
  end
  
end

