class FamilyMembersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_member, only: [:show]

  def index
    @members = current_user.family_members
  end

  def new
    @member = FamilyMember.new
  end

  def create
  end

  def show
  end

  private

  def set_member
    @member = FamilyMember.find_by(id: params[:id])
  end
  
end

